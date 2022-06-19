.class final Lcom/google/android/gms/internal/firebase-auth-api/w3;
.super Lcom/google/android/gms/internal/firebase-auth-api/n2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/n2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/n7;",
        "Lcom/google/android/gms/internal/firebase-auth-api/k7;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/y3;Ljava/lang/Class;)V
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

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/n7;->z()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/kd;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/n7;->y()Lcom/google/android/gms/internal/firebase-auth-api/q7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/q7;->y()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/n7;->y()Lcom/google/android/gms/internal/firebase-auth-api/q7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/q7;->y()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n7;->A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/n7;

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

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n7;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/k7;->C()Lcom/google/android/gms/internal/firebase-auth-api/j7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/n7;->z()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/id;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->s([B)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/j7;->m(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/j7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/n7;->y()Lcom/google/android/gms/internal/firebase-auth-api/q7;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/j7;->l(Lcom/google/android/gms/internal/firebase-auth-api/q7;)Lcom/google/android/gms/internal/firebase-auth-api/j7;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/j7;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/j7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/k7;

    return-object p1
.end method
