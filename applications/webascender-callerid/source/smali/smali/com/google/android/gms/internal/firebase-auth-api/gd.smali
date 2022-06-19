.class public final Lcom/google/android/gms/internal/firebase-auth-api/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/v2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/i6;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/i6;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/gd;->a:Lcom/google/android/gms/internal/firebase-auth-api/i6;

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/gd;->b:I

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/i6;->a([BI)[B

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, need at least 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/gd;->a:Lcom/google/android/gms/internal/firebase-auth-api/i6;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/gd;->b:I

    .line 1
    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i6;->a([BI)[B

    move-result-object p2

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/hc;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
