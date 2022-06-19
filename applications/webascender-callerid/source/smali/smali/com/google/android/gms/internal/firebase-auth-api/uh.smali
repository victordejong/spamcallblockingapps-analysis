.class final Lcom/google/android/gms/internal/firebase-auth-api/uh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/vh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/vh;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/uh;->b:Lcom/google/android/gms/internal/firebase-auth-api/vh;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/uh;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/uh;->b:Lcom/google/android/gms/internal/firebase-auth-api/vh;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/vh;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->e()V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/uh;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method
