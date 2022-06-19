.class Lcom/google/firebase/auth/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/auth/internal/k0;


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/s0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/firebase/auth/g;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/g;->J1(Lcom/google/android/gms/internal/firebase-auth-api/en;)V

    iget-object v0, p0, Lcom/google/firebase/auth/s0;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->t(Lcom/google/firebase/auth/g;Lcom/google/android/gms/internal/firebase-auth-api/en;ZZ)V

    return-void
.end method
