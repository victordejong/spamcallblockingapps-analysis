.class final Lcom/google/firebase/auth/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/auth/internal/d0;


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/t0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/firebase/auth/g;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/g;->J1(Lcom/google/android/gms/internal/firebase-auth-api/en;)V

    iget-object v0, p0, Lcom/google/firebase/auth/t0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->t(Lcom/google/firebase/auth/g;Lcom/google/android/gms/internal/firebase-auth-api/en;ZZ)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->y1()I

    move-result v0

    const/16 v1, 0x4273

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->y1()I

    move-result v0

    const/16 v1, 0x427d

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->y1()I

    move-result v0

    const/16 v1, 0x426d

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->y1()I

    move-result p1

    const/16 v0, 0x42c3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/t0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->j()V

    return-void
.end method
