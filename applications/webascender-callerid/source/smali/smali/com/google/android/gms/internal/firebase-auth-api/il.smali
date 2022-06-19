.class final Lcom/google/android/gms/internal/firebase-auth-api/il;
.super Lcom/google/android/gms/internal/firebase-auth-api/kk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/firebase-auth-api/ll;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/kk;-><init>()V

    return-void
.end method

.method private final B(Lcom/google/android/gms/internal/firebase-auth-api/jl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/hl;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/hl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/il;Lcom/google/android/gms/internal/firebase-auth-api/jl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final w(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 1
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->l(Lcom/google/android/gms/internal/firebase-auth-api/ll;Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->o:Lcom/google/firebase/auth/c;

    iput-object p3, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->p:Ljava/lang/String;

    iput-object p4, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->q:Ljava/lang/String;

    iget-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f:Lcom/google/firebase/auth/internal/n;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/google/firebase/auth/internal/n;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->i(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final F2(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/il;->w(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final K0(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    .line 1
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected response type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->n:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->k(Lcom/google/android/gms/internal/firebase-auth-api/ll;Z)Z

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/fl;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/fl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/il;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/il;->B(Lcom/google/android/gms/internal/firebase-auth-api/jl;)V

    return-void
.end method

.method public final U(Lcom/google/android/gms/internal/firebase-auth-api/jm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->k:Lcom/google/android/gms/internal/firebase-auth-api/jm;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return-void
.end method

.method public final X(Lcom/google/firebase/auth/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x24

    .line 1
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected response type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->k(Lcom/google/android/gms/internal/firebase-auth-api/ll;Z)Z

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/el;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/el;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/il;Lcom/google/firebase/auth/q;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/il;->B(Lcom/google/android/gms/internal/firebase-auth-api/jl;)V

    return-void
.end method

.method public final X0(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->z1()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "MISSING_MFA_PENDING_CREDENTIAL"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b9

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "MISSING_MFA_ENROLLMENT_ID"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42ba

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "INVALID_MFA_PENDING_CREDENTIAL"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bb

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "MFA_ENROLLMENT_NOT_FOUND"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bc

    .line 9
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_4
    const-string v1, "ADMIN_ONLY_OPERATION"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bd

    .line 11
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_5
    const-string v1, "UNVERIFIED_EMAIL"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42be

    .line 13
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_6
    const-string v1, "SECOND_FACTOR_EXISTS"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bf

    .line 15
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_7
    const-string v1, "SECOND_FACTOR_LIMIT_EXCEEDED"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c0

    .line 17
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_8
    const-string v1, "UNSUPPORTED_FIRST_FACTOR"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c1

    .line 19
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_9
    const-string v1, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c2

    .line 21
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 22
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    .line 23
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->k(Lcom/google/android/gms/internal/firebase-auth-api/ll;Z)Z

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/gl;

    .line 24
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/gl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/il;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/il;->B(Lcom/google/android/gms/internal/firebase-auth-api/jl;)V

    return-void

    .line 25
    :cond_b
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->l(Lcom/google/android/gms/internal/firebase-auth-api/ll;Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->i(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final a1(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->i:Lcom/google/android/gms/internal/firebase-auth-api/en;

    iput-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j:Lcom/google/android/gms/internal/firebase-auth-api/xm;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return-void
.end method

.method public final e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return-void
.end method

.method public final g2(Lcom/google/android/gms/internal/firebase-auth-api/en;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->i:Lcom/google/android/gms/internal/firebase-auth-api/en;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return-void
.end method

.method public final h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return-void
.end method

.method public final l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return-void
.end method

.method public final l1(Lcom/google/android/gms/internal/firebase-auth-api/qn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->l:Lcom/google/android/gms/internal/firebase-auth-api/qn;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->n:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/dl;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/dl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/il;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/il;->B(Lcom/google/android/gms/internal/firebase-auth-api/jl;)V

    return-void
.end method

.method public final r0(Lcom/google/android/gms/internal/firebase-auth-api/lg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->r:Lcom/google/android/gms/internal/firebase-auth-api/lg;

    const-string p1, "REQUIRES_SECOND_FACTOR_AUTH"

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->i(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final s0(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    .line 1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/il;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->m:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    return-void
.end method

.method public final v1(Lcom/google/android/gms/internal/firebase-auth-api/jg;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jg;->y1()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jg;->z1()Lcom/google/firebase/auth/i0;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jg;->A1()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/jg;->B1()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/il;->w(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
