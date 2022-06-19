.class final Lcom/google/android/gms/internal/firebase-auth-api/eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ho;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/fh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/fh;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/eh;->b:Lcom/google/android/gms/internal/firebase-auth-api/fh;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/eh;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ho;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/eh;->b:Lcom/google/android/gms/internal/firebase-auth-api/fh;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->c:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-static {v1, p1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->h(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/ho;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/eh;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method
