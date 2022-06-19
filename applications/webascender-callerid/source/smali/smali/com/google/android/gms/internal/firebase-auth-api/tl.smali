.class final Lcom/google/android/gms/internal/firebase-auth-api/tl;
.super Lcom/google/firebase/auth/s$b;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/firebase/auth/s$b;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/s$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->b:Lcom/google/firebase/auth/s$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/auth/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->c:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->b:Lcom/google/firebase/auth/s$b;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/s$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/firebase/auth/s$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->b:Lcom/google/firebase/auth/s$b;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/s$b;->b(Ljava/lang/String;Lcom/google/firebase/auth/s$a;)V

    return-void
.end method

.method public final c(Lcom/google/firebase/auth/q;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->c:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->b:Lcom/google/firebase/auth/s$b;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/s$b;->c(Lcom/google/firebase/auth/q;)V

    return-void
.end method

.method public final d(Lcom/google/firebase/FirebaseException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->c:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tl;->b:Lcom/google/firebase/auth/s$b;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/s$b;->d(Lcom/google/firebase/FirebaseException;)V

    return-void
.end method
