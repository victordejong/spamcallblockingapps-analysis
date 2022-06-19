.class final Lcom/google/android/gms/internal/firebase-auth-api/q3;
.super Lcom/google/android/gms/internal/firebase-auth-api/n2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/n2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/x6;",
        "Lcom/google/android/gms/internal/firebase-auth-api/u6;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/r3;Ljava/lang/Class;)V
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

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/x6;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/u3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/u3;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->i()Lcom/google/android/gms/internal/firebase-auth-api/n2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->y()Lcom/google/android/gms/internal/firebase-auth-api/e7;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e(Lcom/google/android/gms/internal/firebase-auth-api/e7;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/d6;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->i()Lcom/google/android/gms/internal/firebase-auth-api/n2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->z()Lcom/google/android/gms/internal/firebase-auth-api/x9;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/n2;->b(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->y()Lcom/google/android/gms/internal/firebase-auth-api/e7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->z()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/kd;->a(I)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/x6;

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

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/x6;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/u3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/u3;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->y()Lcom/google/android/gms/internal/firebase-auth-api/e7;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/t3;->f(Lcom/google/android/gms/internal/firebase-auth-api/e7;)Lcom/google/android/gms/internal/firebase-auth-api/b7;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/d6;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/d6;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->i()Lcom/google/android/gms/internal/firebase-auth-api/n2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->z()Lcom/google/android/gms/internal/firebase-auth-api/x9;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/n2;->d(Lcom/google/android/gms/internal/firebase-auth-api/f0;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->C()Lcom/google/android/gms/internal/firebase-auth-api/t6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t6;->l(Lcom/google/android/gms/internal/firebase-auth-api/b7;)Lcom/google/android/gms/internal/firebase-auth-api/t6;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u9;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t6;->m(Lcom/google/android/gms/internal/firebase-auth-api/u9;)Lcom/google/android/gms/internal/firebase-auth-api/t6;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t6;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/t6;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    return-object p1
.end method
