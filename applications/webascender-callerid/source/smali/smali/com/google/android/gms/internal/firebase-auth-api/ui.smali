.class final Lcom/google/android/gms/internal/firebase-auth-api/ui;
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
.field private final v:Lcom/google/firebase/auth/q;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/q;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;-><init>(I)V

    const-string v0, "credential cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/auth/q;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ui;->v:Lcom/google/firebase/auth/q;

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

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/ti;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/ti;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ui;)V

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

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e:Ljava/lang/Object;

    .line 2
    check-cast v1, Lcom/google/firebase/auth/internal/k0;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->i:Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/k0;->a(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/firebase/auth/g;)V

    .line 3
    new-instance v1, Lcom/google/firebase/auth/internal/r0;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/r0;-><init>(Lcom/google/firebase/auth/internal/x0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->h(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic m(Lcom/google/android/gms/internal/firebase-auth-api/zj;Lcom/google/android/gms/tasks/h;)V
    .locals 2
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

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d:Lcom/google/firebase/auth/g;

    invoke-virtual {v0}, Lcom/google/firebase/auth/g;->K1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ui;->v:Lcom/google/firebase/auth/q;

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ve;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/q;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->b:Lcom/google/android/gms/internal/firebase-auth-api/il;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ok;->Q(Lcom/google/android/gms/internal/firebase-auth-api/ve;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    const-string v0, "linkPhoneAuthCredential"

    return-object v0
.end method
