.class final Lcom/google/android/gms/internal/firebase-auth-api/cj;
.super Lcom/google/android/gms/internal/firebase-auth-api/ll;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/ll<",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/auth/internal/k0;",
        ">;"
    }
.end annotation


# instance fields
.field private final v:Lcom/google/android/gms/internal/firebase-auth-api/of;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;-><init>(I)V

    const-string v0, "email cannot be null or empty"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "password cannot be null or empty"

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/r;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/of;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/of;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/cj;->v:Lcom/google/android/gms/internal/firebase-auth-api/of;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/internal/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/r<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zj;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/r;->a()Lcom/google/android/gms/common/api/internal/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/bj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/bj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/cj;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/r$a;->b(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/r$a;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/r$a;->a()Lcom/google/android/gms/common/api/internal/r;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c:Lcom/google/firebase/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->h(Lcom/google/firebase/c;Lcom/google/android/gms/internal/firebase-auth-api/xm;)Lcom/google/firebase/auth/internal/x0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d:Lcom/google/firebase/auth/g;

    .line 2
    invoke-virtual {v1}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/x0;->C1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/google/firebase/auth/internal/k0;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->i:Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/k0;->a(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/firebase/auth/g;)V

    .line 4
    new-instance v1, Lcom/google/firebase/auth/internal/r0;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/r0;-><init>(Lcom/google/firebase/auth/internal/x0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->h(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4280

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->i(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method final synthetic m(Lcom/google/android/gms/internal/firebase-auth-api/zj;Lcom/google/android/gms/tasks/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/kl;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/kl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ll;Lcom/google/android/gms/tasks/h;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->u:Lcom/google/android/gms/internal/firebase-auth-api/kl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zj;->i()Lcom/google/android/gms/internal/firebase-auth-api/ok;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/cj;->v:Lcom/google/android/gms/internal/firebase-auth-api/of;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->b:Lcom/google/android/gms/internal/firebase-auth-api/il;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->N(Lcom/google/android/gms/internal/firebase-auth-api/of;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "reauthenticateWithEmailPasswordWithData"

    return-object v0
.end method
