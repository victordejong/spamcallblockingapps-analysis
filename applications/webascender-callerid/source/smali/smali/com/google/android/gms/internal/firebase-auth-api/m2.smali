.class public final Lcom/google/android/gms/internal/firebase-auth-api/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/la;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/la;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/m2;->a:Lcom/google/android/gms/internal/firebase-auth-api/la;

    return-void
.end method

.method public static b(Ljava/lang/String;[BI)Lcom/google/android/gms/internal/firebase-auth-api/m2;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/m2;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/la;->B()Lcom/google/android/gms/internal/firebase-auth-api/ka;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->s([B)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->l(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    add-int/lit8 p2, p2, -0x1

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    if-eq p2, p0, :cond_1

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    .line 6
    :goto_0
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ka;->m(Lcom/google/android/gms/internal/firebase-auth-api/nb;)Lcom/google/android/gms/internal/firebase-auth-api/ka;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/la;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/m2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/la;)V

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/firebase-auth-api/la;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/m2;->a:Lcom/google/android/gms/internal/firebase-auth-api/la;

    return-object v0
.end method
