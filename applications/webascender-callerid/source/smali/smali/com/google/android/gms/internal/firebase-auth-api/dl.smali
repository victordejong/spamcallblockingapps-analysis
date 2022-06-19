.class final Lcom/google/android/gms/internal/firebase-auth-api/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/jl;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/il;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/dl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/firebase/auth/s$b;[Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/dl;->a:Ljava/lang/String;

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/s$a;->y1()Lcom/google/firebase/auth/s$a;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/auth/s$b;->b(Ljava/lang/String;Lcom/google/firebase/auth/s$a;)V

    return-void
.end method
