.class final Lcom/google/android/gms/internal/firebase-auth-api/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/po;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/dh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/dh;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ch;->b:Lcom/google/android/gms/internal/firebase-auth-api/dh;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ch;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/po;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/po;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4281

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ch;->b:Lcom/google/android/gms/internal/firebase-auth-api/dh;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/dh;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/po;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/po;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/firebase/auth/q;->C1(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/q;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->l(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/q;)V

    return-void

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/po;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/po;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/po;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "Bearer"

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/en;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ch;->b:Lcom/google/android/gms/internal/firebase-auth-api/dh;

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/dh;->c:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/po;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ch;->b:Lcom/google/android/gms/internal/firebase-auth-api/dh;

    iget-object v8, p1, Lcom/google/android/gms/internal/firebase-auth-api/dh;->b:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    iget-object v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/ch;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    const-string v5, "phone"

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->g(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/en;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/i0;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ch;->a:Lcom/google/android/gms/internal/firebase-auth-api/nl;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method
