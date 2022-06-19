.class public final Lcom/google/android/gms/internal/firebase-auth-api/c3;
.super Lcom/google/android/gms/internal/firebase-auth-api/l2;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/j2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/firebase-auth-api/f0;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/firebase-auth-api/f0;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/l2<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/android/gms/internal/firebase-auth-api/j2;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/internal/firebase-auth-api/p2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/p2<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/d3;Lcom/google/android/gms/internal/firebase-auth-api/p2;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/d3<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/p2<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/l2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/p2;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c3;->c:Lcom/google/android/gms/internal/firebase-auth-api/p2;

    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/ga;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aq;->a()Lcom/google/android/gms/internal/firebase-auth-api/aq;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e9;->B(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/e9;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/d5;->j(Lcom/google/android/gms/internal/firebase-auth-api/e9;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/e9;->z()Lcom/google/android/gms/internal/firebase-auth-api/h9;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c3;->c:Lcom/google/android/gms/internal/firebase-auth-api/p2;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->e(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->B()Lcom/google/android/gms/internal/firebase-auth-api/ca;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ca;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ca;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/f0;->j()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ca;->l(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/ca;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/fa;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ca;->m(Lcom/google/android/gms/internal/firebase-auth-api/fa;)Lcom/google/android/gms/internal/firebase-auth-api/ca;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ga;
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaal; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized proto of type "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
