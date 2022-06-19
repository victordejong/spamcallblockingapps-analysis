.class public final Lcom/google/android/gms/internal/firebase-auth-api/o5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/c2;

.field private final b:Lcom/google/android/gms/internal/firebase-auth-api/g2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/c2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/o5;->a:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/o5;->b:Lcom/google/android/gms/internal/firebase-auth-api/g2;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/g2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/o5;->a:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/o5;->b:Lcom/google/android/gms/internal/firebase-auth-api/g2;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/o5;->a:Lcom/google/android/gms/internal/firebase-auth-api/c2;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->b([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/o5;->b:Lcom/google/android/gms/internal/firebase-auth-api/g2;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/g2;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method
