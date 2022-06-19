.class final Lcom/google/android/gms/internal/firebase-auth-api/wg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/qn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/yj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/wg;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/qn;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/wg;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->d(Lcom/google/android/gms/internal/firebase-auth-api/qn;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/wg;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->k(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
