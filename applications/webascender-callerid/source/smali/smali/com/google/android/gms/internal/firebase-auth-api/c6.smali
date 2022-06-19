.class final Lcom/google/android/gms/internal/firebase-auth-api/c6;
.super Lcom/google/android/gms/internal/firebase-auth-api/n2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/n2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/x9;",
        "Lcom/google/android/gms/internal/firebase-auth-api/u9;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/d6;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/n2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/x9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->z()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->y()Lcom/google/android/gms/internal/firebase-auth-api/aa;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/d6;->j(Lcom/google/android/gms/internal/firebase-auth-api/aa;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/x9;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/firebase-auth-api/f0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/x9;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/u9;->C()Lcom/google/android/gms/internal/firebase-auth-api/t9;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t9;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/t9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->y()Lcom/google/android/gms/internal/firebase-auth-api/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t9;->l(Lcom/google/android/gms/internal/firebase-auth-api/aa;)Lcom/google/android/gms/internal/firebase-auth-api/t9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->z()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/id;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->s([B)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t9;->m(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/t9;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u9;

    return-object p1
.end method
