.class public final Lcom/google/android/gms/internal/firebase-auth-api/w9;
.super Lcom/google/android/gms/internal/firebase-auth-api/jq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/jq<",
        "Lcom/google/android/gms/internal/firebase-auth-api/x9;",
        "Lcom/google/android/gms/internal/firebase-auth-api/w9;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->D()Lcom/google/android/gms/internal/firebase-auth-api/x9;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/v9;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->D()Lcom/google/android/gms/internal/firebase-auth-api/x9;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method


# virtual methods
.method public final k(Lcom/google/android/gms/internal/firebase-auth-api/aa;)Lcom/google/android/gms/internal/firebase-auth-api/w9;
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
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/x9;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->E(Lcom/google/android/gms/internal/firebase-auth-api/x9;Lcom/google/android/gms/internal/firebase-auth-api/aa;)V

    return-object p0
.end method

.method public final l(I)Lcom/google/android/gms/internal/firebase-auth-api/w9;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->d()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/x9;

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->F(Lcom/google/android/gms/internal/firebase-auth-api/x9;I)V

    return-object p0
.end method
