.class final Lcom/google/android/gms/internal/firebase-auth-api/fg;
.super Lcom/google/android/gms/internal/firebase-auth-api/ef;
.source "SourceFile"


# static fields
.field static final b:Lcom/google/android/gms/internal/firebase-auth-api/fg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/fg;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/fg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/fg;->b:Lcom/google/android/gms/internal/firebase-auth-api/fg;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ef;-><init>(Ljava/lang/String;)V

    return-void
.end method
