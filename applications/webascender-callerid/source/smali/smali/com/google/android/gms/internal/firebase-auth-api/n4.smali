.class final Lcom/google/android/gms/internal/firebase-auth-api/n4;
.super Lcom/google/android/gms/internal/firebase-auth-api/n2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/n2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/lb;",
        "Lcom/google/android/gms/internal/firebase-auth-api/ib;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/o4;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/n2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/lb;

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aq;->a()Lcom/google/android/gms/internal/firebase-auth-api/aq;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/lb;->A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/lb;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/firebase-auth-api/f0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/lb;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->B()Lcom/google/android/gms/internal/firebase-auth-api/hb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/hb;->l(Lcom/google/android/gms/internal/firebase-auth-api/lb;)Lcom/google/android/gms/internal/firebase-auth-api/hb;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/hb;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/hb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    return-object p1
.end method
