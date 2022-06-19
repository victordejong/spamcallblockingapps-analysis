.class final Lcom/google/android/gms/internal/firebase-auth-api/rg;
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
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/ml;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

.field final synthetic c:Lcom/google/android/gms/internal/firebase-auth-api/en;

.field final synthetic d:Lcom/google/android/gms/internal/firebase-auth-api/vn;

.field final synthetic e:Lcom/google/android/gms/internal/firebase-auth-api/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/ml;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/vn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->e:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->a:Lcom/google/android/gms/internal/firebase-auth-api/ml;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->c:Lcom/google/android/gms/internal/firebase-auth-api/en;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->d:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/vm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/vm;->y1()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->e:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->c:Lcom/google/android/gms/internal/firebase-auth-api/en;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/xm;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->d:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->a:Lcom/google/android/gms/internal/firebase-auth-api/ml;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->k(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->a:Lcom/google/android/gms/internal/firebase-auth-api/ml;

    const-string v0, "No users"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/rg;->a:Lcom/google/android/gms/internal/firebase-auth-api/ml;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method
