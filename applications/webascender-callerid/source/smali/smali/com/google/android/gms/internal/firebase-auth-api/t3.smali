.class final Lcom/google/android/gms/internal/firebase-auth-api/t3;
.super Lcom/google/android/gms/internal/firebase-auth-api/n2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/n2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/e7;",
        "Lcom/google/android/gms/internal/firebase-auth-api/b7;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/u3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/u3;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->b:Lcom/google/android/gms/internal/firebase-auth-api/u3;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/n2;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static final f(Lcom/google/android/gms/internal/firebase-auth-api/e7;)Lcom/google/android/gms/internal/firebase-auth-api/b7;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/b7;->C()Lcom/google/android/gms/internal/firebase-auth-api/z6;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->y()Lcom/google/android/gms/internal/firebase-auth-api/h7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z6;->l(Lcom/google/android/gms/internal/firebase-auth-api/h7;)Lcom/google/android/gms/internal/firebase-auth-api/z6;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->z()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/id;->a(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->s([B)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z6;->m(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/z6;

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z6;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/z6;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/b7;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/e7;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e(Lcom/google/android/gms/internal/firebase-auth-api/e7;)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/e7;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/firebase-auth-api/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/e7;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/t3;->f(Lcom/google/android/gms/internal/firebase-auth-api/e7;)Lcom/google/android/gms/internal/firebase-auth-api/b7;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/google/android/gms/internal/firebase-auth-api/e7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->z()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/kd;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->b:Lcom/google/android/gms/internal/firebase-auth-api/u3;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->y()Lcom/google/android/gms/internal/firebase-auth-api/h7;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/u3;->j(Lcom/google/android/gms/internal/firebase-auth-api/u3;Lcom/google/android/gms/internal/firebase-auth-api/h7;)V

    return-void
.end method
