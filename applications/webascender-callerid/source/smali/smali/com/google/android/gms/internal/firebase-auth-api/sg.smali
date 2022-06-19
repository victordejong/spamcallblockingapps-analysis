.class final Lcom/google/android/gms/internal/firebase-auth-api/sg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/nl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
        "Lcom/google/android/gms/internal/firebase-auth-api/wn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

.field final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

.field final synthetic c:Lcom/google/android/gms/internal/firebase-auth-api/yj;

.field final synthetic d:Lcom/google/android/gms/internal/firebase-auth-api/en;

.field final synthetic e:Lcom/google/android/gms/internal/firebase-auth-api/ml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/xm;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->c:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->d:Lcom/google/android/gms/internal/firebase-auth-api/en;

    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->e:Lcom/google/android/gms/internal/firebase-auth-api/ml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/wn;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    const-string v1, "EMAIL"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->G1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->G1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    const-string v2, "DISPLAY_NAME"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->H1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->H1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    const-string v2, "PHOTO_URL"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->I1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->a:Lcom/google/android/gms/internal/firebase-auth-api/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    const-string v1, "redacted"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->J1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/xm;

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/wn;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/xm;->K1(Ljava/util/List;)Lcom/google/android/gms/internal/firebase-auth-api/xm;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->c:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->d:Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/wn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/wn;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/wn;->c()J

    move-result-wide v4

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->D1()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v3, v2, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/en;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v1, p1

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->b:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sg;->e:Lcom/google/android/gms/internal/firebase-auth-api/ml;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ml;->g(Ljava/lang/String;)V

    return-void
.end method
