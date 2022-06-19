.class final Lcom/google/android/gms/internal/firebase-auth-api/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/en;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/hh;->b:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/hh;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/en;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vn;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/vn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/vn;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/hh;->b:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/hh;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-static {v1, v2, p1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->i(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/hh;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->k(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
