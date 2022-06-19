.class public final Lcom/google/firebase/auth/internal/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/firebase/auth/c;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/auth/k;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/firebase/auth/k;

    .line 4
    invoke-static {p0, p1}, Lcom/google/firebase/auth/k;->A1(Lcom/google/firebase/auth/k;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Lcom/google/firebase/auth/e;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Lcom/google/firebase/auth/e;

    .line 7
    invoke-static {p0, p1}, Lcom/google/firebase/auth/e;->A1(Lcom/google/firebase/auth/e;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object p0

    return-object p0

    :cond_1
    const-class v0, Lcom/google/firebase/auth/v;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    check-cast p0, Lcom/google/firebase/auth/v;

    .line 10
    invoke-static {p0, p1}, Lcom/google/firebase/auth/v;->A1(Lcom/google/firebase/auth/v;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object p0

    return-object p0

    :cond_2
    const-class v0, Lcom/google/firebase/auth/j;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    check-cast p0, Lcom/google/firebase/auth/j;

    .line 13
    invoke-static {p0, p1}, Lcom/google/firebase/auth/j;->A1(Lcom/google/firebase/auth/j;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object p0

    return-object p0

    :cond_3
    const-class v0, Lcom/google/firebase/auth/u;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    check-cast p0, Lcom/google/firebase/auth/u;

    .line 16
    invoke-static {p0, p1}, Lcom/google/firebase/auth/u;->A1(Lcom/google/firebase/auth/u;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object p0

    return-object p0

    :cond_4
    const-class v0, Lcom/google/firebase/auth/i0;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    check-cast p0, Lcom/google/firebase/auth/i0;

    .line 19
    invoke-static {p0, p1}, Lcom/google/firebase/auth/i0;->C1(Lcom/google/firebase/auth/i0;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object p0

    return-object p0

    .line 20
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported credential type."

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
