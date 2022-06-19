.class public final Lcom/google/android/gms/internal/firebase-auth-api/l5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:[B

.field public static final b:Lcom/google/android/gms/internal/firebase-auth-api/la;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a:[B

    .line 1
    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/m9;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/m9;

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/r9;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/r9;

    sget-object v9, Lcom/google/android/gms/internal/firebase-auth-api/r8;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/r8;

    sget-object v10, Lcom/google/android/gms/internal/firebase-auth-api/l3;->a:Lcom/google/android/gms/internal/firebase-auth-api/la;

    sget-object v11, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v0

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m9;Lcom/google/android/gms/internal/firebase-auth-api/r9;Lcom/google/android/gms/internal/firebase-auth-api/r8;Lcom/google/android/gms/internal/firebase-auth-api/la;Lcom/google/android/gms/internal/firebase-auth-api/nb;[B)Lcom/google/android/gms/internal/firebase-auth-api/la;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b:Lcom/google/android/gms/internal/firebase-auth-api/la;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/r8;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/r8;

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    move-object v1, v7

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m9;Lcom/google/android/gms/internal/firebase-auth-api/r9;Lcom/google/android/gms/internal/firebase-auth-api/r8;Lcom/google/android/gms/internal/firebase-auth-api/la;Lcom/google/android/gms/internal/firebase-auth-api/nb;[B)Lcom/google/android/gms/internal/firebase-auth-api/la;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/l3;->b:Lcom/google/android/gms/internal/firebase-auth-api/la;

    move-object v3, v9

    move-object v5, v11

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->a(Lcom/google/android/gms/internal/firebase-auth-api/m9;Lcom/google/android/gms/internal/firebase-auth-api/r9;Lcom/google/android/gms/internal/firebase-auth-api/r8;Lcom/google/android/gms/internal/firebase-auth-api/la;Lcom/google/android/gms/internal/firebase-auth-api/nb;[B)Lcom/google/android/gms/internal/firebase-auth-api/la;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/firebase-auth-api/m9;Lcom/google/android/gms/internal/firebase-auth-api/r9;Lcom/google/android/gms/internal/firebase-auth-api/r8;Lcom/google/android/gms/internal/firebase-auth-api/la;Lcom/google/android/gms/internal/firebase-auth-api/nb;[B)Lcom/google/android/gms/internal/firebase-auth-api/la;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/x8;->A()Lcom/google/android/gms/internal/firebase-auth-api/w8;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/k9;->B()Lcom/google/android/gms/internal/firebase-auth-api/j9;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/j9;->k(Lcom/google/android/gms/internal/firebase-auth-api/m9;)Lcom/google/android/gms/internal/firebase-auth-api/j9;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/j9;->l(Lcom/google/android/gms/internal/firebase-auth-api/r9;)Lcom/google/android/gms/internal/firebase-auth-api/j9;

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->s([B)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/j9;->m(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/j9;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/k9;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/u8;->z()Lcom/google/android/gms/internal/firebase-auth-api/t8;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/t8;->k(Lcom/google/android/gms/internal/firebase-auth-api/la;)Lcom/google/android/gms/internal/firebase-auth-api/t8;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u8;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/a9;->B()Lcom/google/android/gms/internal/firebase-auth-api/z8;

    move-result-object p3

    .line 11
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z8;->k(Lcom/google/android/gms/internal/firebase-auth-api/k9;)Lcom/google/android/gms/internal/firebase-auth-api/z8;

    .line 12
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/z8;->l(Lcom/google/android/gms/internal/firebase-auth-api/u8;)Lcom/google/android/gms/internal/firebase-auth-api/z8;

    .line 13
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/z8;->m(Lcom/google/android/gms/internal/firebase-auth-api/r8;)Lcom/google/android/gms/internal/firebase-auth-api/z8;

    .line 14
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a9;

    .line 15
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/w8;->k(Lcom/google/android/gms/internal/firebase-auth-api/a9;)Lcom/google/android/gms/internal/firebase-auth-api/w8;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/x8;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/la;->B()Lcom/google/android/gms/internal/firebase-auth-api/ka;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    invoke-direct {p2}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>()V

    const-string p2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 19
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->m(Lcom/google/android/gms/internal/firebase-auth-api/nb;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/uo;->j()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->l(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/la;

    return-object p0
.end method
