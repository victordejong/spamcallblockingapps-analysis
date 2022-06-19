.class final Lcom/google/android/gms/internal/firebase-auth-api/fh;
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
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/fo;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

.field final synthetic c:Lcom/google/android/gms/internal/firebase-auth-api/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->c:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->a:Lcom/google/android/gms/internal/firebase-auth-api/fo;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/en;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->a:Lcom/google/android/gms/internal/firebase-auth-api/fo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fo;->B1(Z)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->a:Lcom/google/android/gms/internal/firebase-auth-api/fo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/fo;->y1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->c:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->l(Lcom/google/android/gms/internal/firebase-auth-api/fi;)Lcom/google/android/gms/internal/firebase-auth-api/ol;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->a:Lcom/google/android/gms/internal/firebase-auth-api/fo;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/eh;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/eh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fh;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->c(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fh;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->k(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
