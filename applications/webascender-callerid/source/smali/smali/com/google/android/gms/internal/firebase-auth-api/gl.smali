.class final Lcom/google/android/gms/internal/firebase-auth-api/gl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/jl;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/il;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/gl;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/firebase/auth/s$b;[Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/gl;->a:Lcom/google/android/gms/common/api/Status;

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/s$b;->d(Lcom/google/firebase/FirebaseException;)V

    return-void
.end method
