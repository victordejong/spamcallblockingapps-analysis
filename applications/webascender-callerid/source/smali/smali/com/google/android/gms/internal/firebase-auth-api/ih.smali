.class final Lcom/google/android/gms/internal/firebase-auth-api/ih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/vm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/en;

.field final synthetic c:Lcom/google/android/gms/internal/firebase-auth-api/jh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/jh;Lcom/google/android/gms/internal/firebase-auth-api/nl;Lcom/google/android/gms/internal/firebase-auth-api/en;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->c:Lcom/google/android/gms/internal/firebase-auth-api/jh;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->b:Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/vm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/vm;->y1()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/xm;

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-direct {v4}, Lcom/google/android/gms/internal/firebase-auth-api/vn;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->b:Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/vn;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->c:Lcom/google/android/gms/internal/firebase-auth-api/jh;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/jh;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/vn;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->c:Lcom/google/android/gms/internal/firebase-auth-api/jh;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/jh;->c:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/jh;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->b:Lcom/google/android/gms/internal/firebase-auth-api/en;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->k(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    const-string v0, "No users."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ih;->c:Lcom/google/android/gms/internal/firebase-auth-api/jh;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/jh;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->k(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
