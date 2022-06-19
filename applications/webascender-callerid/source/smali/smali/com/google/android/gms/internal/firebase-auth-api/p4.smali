.class final Lcom/google/android/gms/internal/firebase-auth-api/p4;
.super Lcom/google/android/gms/internal/firebase-auth-api/o2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/o2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/c2;",
        "Lcom/google/android/gms/internal/firebase-auth-api/tb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/o2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/tb;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/md;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/tb;->z()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->v()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/md;-><init>([B)V

    return-object v0
.end method
