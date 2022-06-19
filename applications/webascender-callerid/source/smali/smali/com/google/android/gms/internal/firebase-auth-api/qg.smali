.class final Lcom/google/android/gms/internal/firebase-auth-api/qg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/nm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/qg;->b:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/qg;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 12

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/nm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nm;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qg;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/lg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nm;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nm;->e()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/lg;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/auth/i0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->o(Lcom/google/android/gms/internal/firebase-auth-api/lg;)V

    return-void

    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nm;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Bearer"

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/en;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/qg;->b:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nm;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/gms/internal/firebase-auth-api/qg;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    move-object v11, p0

    invoke-static/range {v4 .. v11}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->g(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/en;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/i0;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/qg;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->k(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
