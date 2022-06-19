.class public final Lcom/google/android/gms/internal/firebase-auth-api/md;
.super Lcom/google/android/gms/internal/firebase-auth-api/lc;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lc;-><init>([B)V

    return-void
.end method


# virtual methods
.method final c([BI)Lcom/google/android/gms/internal/firebase-auth-api/jc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ld;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ld;-><init>([BI)V

    return-object v0
.end method
