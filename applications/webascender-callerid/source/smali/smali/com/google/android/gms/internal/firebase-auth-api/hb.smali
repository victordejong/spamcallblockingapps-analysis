.class public final Lcom/google/android/gms/internal/firebase-auth-api/hb;
.super Lcom/google/android/gms/internal/firebase-auth-api/jq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/jq<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ib;",
        "Lcom/google/android/gms/internal/firebase-auth-api/hb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->C()Lcom/google/android/gms/internal/firebase-auth-api/ib;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/gb;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->C()Lcom/google/android/gms/internal/firebase-auth-api/ib;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method


# virtual methods
.method public final k(I)Lcom/google/android/gms/internal/firebase-auth-api/hb;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->d()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->D(Lcom/google/android/gms/internal/firebase-auth-api/ib;I)V

    return-object p0
.end method

.method public final l(Lcom/google/android/gms/internal/firebase-auth-api/lb;)Lcom/google/android/gms/internal/firebase-auth-api/hb;
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
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->E(Lcom/google/android/gms/internal/firebase-auth-api/ib;Lcom/google/android/gms/internal/firebase-auth-api/lb;)V

    return-object p0
.end method
