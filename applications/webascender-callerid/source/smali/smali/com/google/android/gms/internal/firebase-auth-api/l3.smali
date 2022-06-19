.class public final Lcom/google/android/gms/internal/firebase-auth-api/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/firebase-auth-api/la;

.field public static final b:Lcom/google/android/gms/internal/firebase-auth-api/la;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l3;->a(I)Lcom/google/android/gms/internal/firebase-auth-api/la;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l3;->a:Lcom/google/android/gms/internal/firebase-auth-api/la;

    const/16 v1, 0x20

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l3;->a(I)Lcom/google/android/gms/internal/firebase-auth-api/la;

    .line 3
    invoke-static {v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/l3;->b(II)Lcom/google/android/gms/internal/firebase-auth-api/la;

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/l3;->b(II)Lcom/google/android/gms/internal/firebase-auth-api/la;

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/r9;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/r9;

    .line 6
    invoke-static {v0, v0, v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l3;->c(IIIILcom/google/android/gms/internal/firebase-auth-api/r9;)Lcom/google/android/gms/internal/firebase-auth-api/la;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/l3;->b:Lcom/google/android/gms/internal/firebase-auth-api/la;

    .line 7
    invoke-static {v1, v0, v1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l3;->c(IIIILcom/google/android/gms/internal/firebase-auth-api/r9;)Lcom/google/android/gms/internal/firebase-auth-api/la;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/la;->B()Lcom/google/android/gms/internal/firebase-auth-api/ka;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/h4;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/h4;-><init>()V

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->m(Lcom/google/android/gms/internal/firebase-auth-api/nb;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/la;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/la;->B()Lcom/google/android/gms/internal/firebase-auth-api/ka;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/r4;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/r4;-><init>()V

    const-string v2, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->m(Lcom/google/android/gms/internal/firebase-auth-api/nb;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/la;

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/firebase-auth-api/la;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/w7;->A()Lcom/google/android/gms/internal/firebase-auth-api/v7;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/v7;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/v7;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/w7;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/la;->B()Lcom/google/android/gms/internal/firebase-auth-api/ka;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/uo;->j()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->l(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b4;-><init>()V

    const-string p0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->m(Lcom/google/android/gms/internal/firebase-auth-api/nb;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/la;

    return-object p0
.end method

.method public static b(II)Lcom/google/android/gms/internal/firebase-auth-api/la;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/n7;->B()Lcom/google/android/gms/internal/firebase-auth-api/m7;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/m7;->l(I)Lcom/google/android/gms/internal/firebase-auth-api/m7;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/q7;->z()Lcom/google/android/gms/internal/firebase-auth-api/p7;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p7;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/p7;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/q7;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/m7;->k(Lcom/google/android/gms/internal/firebase-auth-api/q7;)Lcom/google/android/gms/internal/firebase-auth-api/m7;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/n7;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/la;->B()Lcom/google/android/gms/internal/firebase-auth-api/ka;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/uo;->j()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->l(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/y3;-><init>()V

    const-string p0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    .line 8
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->m(Lcom/google/android/gms/internal/firebase-auth-api/nb;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/la;

    return-object p0
.end method

.method public static c(IIIILcom/google/android/gms/internal/firebase-auth-api/r9;)Lcom/google/android/gms/internal/firebase-auth-api/la;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->B()Lcom/google/android/gms/internal/firebase-auth-api/d7;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/h7;->z()Lcom/google/android/gms/internal/firebase-auth-api/g7;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/g7;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/g7;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/h7;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/d7;->k(Lcom/google/android/gms/internal/firebase-auth-api/h7;)Lcom/google/android/gms/internal/firebase-auth-api/d7;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/d7;->l(I)Lcom/google/android/gms/internal/firebase-auth-api/d7;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/e7;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->B()Lcom/google/android/gms/internal/firebase-auth-api/w9;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aa;->A()Lcom/google/android/gms/internal/firebase-auth-api/z9;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/firebase-auth-api/z9;->k(Lcom/google/android/gms/internal/firebase-auth-api/r9;)Lcom/google/android/gms/internal/firebase-auth-api/z9;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/z9;->l(I)Lcom/google/android/gms/internal/firebase-auth-api/z9;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/aa;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/w9;->k(Lcom/google/android/gms/internal/firebase-auth-api/aa;)Lcom/google/android/gms/internal/firebase-auth-api/w9;

    const/16 p2, 0x20

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/w9;->l(I)Lcom/google/android/gms/internal/firebase-auth-api/w9;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/x9;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->B()Lcom/google/android/gms/internal/firebase-auth-api/w6;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/w6;->k(Lcom/google/android/gms/internal/firebase-auth-api/e7;)Lcom/google/android/gms/internal/firebase-auth-api/w6;

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/w6;->l(Lcom/google/android/gms/internal/firebase-auth-api/x9;)Lcom/google/android/gms/internal/firebase-auth-api/w6;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/x6;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/la;->B()Lcom/google/android/gms/internal/firebase-auth-api/ka;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/uo;->j()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->l(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/r3;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/r3;-><init>()V

    const-string p0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    .line 17
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->m(Lcom/google/android/gms/internal/firebase-auth-api/nb;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/la;

    return-object p0
.end method
