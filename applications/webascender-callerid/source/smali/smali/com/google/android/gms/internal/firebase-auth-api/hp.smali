.class final Lcom/google/android/gms/internal/firebase-auth-api/hp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/vp;

.field private final b:[B


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/firebase-auth-api/bp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/hp;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/vp;->H([B)Lcom/google/android/gms/internal/firebase-auth-api/vp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/hp;->a:Lcom/google/android/gms/internal/firebase-auth-api/vp;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/firebase-auth-api/mp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/hp;->a:Lcom/google/android/gms/internal/firebase-auth-api/vp;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vp;->j()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/jp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/hp;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/jp;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/firebase-auth-api/vp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/hp;->a:Lcom/google/android/gms/internal/firebase-auth-api/vp;

    return-object v0
.end method
