.class public final Lcom/google/android/gms/internal/firebase-auth-api/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/dk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/dk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/dk;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/dk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/dk;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/dk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/dk;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/dk;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/dk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/dk;->b:Ljava/lang/String;

    return-object v0
.end method
