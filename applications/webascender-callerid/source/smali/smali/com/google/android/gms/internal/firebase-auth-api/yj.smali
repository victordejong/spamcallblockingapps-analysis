.class public Lcom/google/android/gms/internal/firebase-auth-api/yj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

.field private final b:Lcom/google/android/gms/common/l/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/lk;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/common/l/a;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/en;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->g2(Lcom/google/android/gms/internal/firebase-auth-api/en;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending token result."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->a1(Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteException when sending get token and account info user response"

    .line 2
    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/firebase-auth-api/jm;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->U(Lcom/google/android/gms/internal/firebase-auth-api/jm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending create auth uri response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/firebase-auth-api/qn;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->l1(Lcom/google/android/gms/internal/firebase-auth-api/qn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending password reset response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when sending delete account response."

    .line 2
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when sending email verification response."

    .line 2
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->s0(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending set account info response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->o(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending send verification code response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lcom/google/firebase/auth/q;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->X(Lcom/google/firebase/auth/q;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending verification completed response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->K0(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending auto retrieval timeout response."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public k(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->X0(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result."

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/q;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->F2(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/q;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RemoteException when sending failure result."

    .line 2
    invoke-virtual {p2, v1, p1, v0}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RemoteException when setting FirebaseUI Version"

    .line 2
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/firebase-auth-api/jg;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->v1(Lcom/google/android/gms/internal/firebase-auth-api/jg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result with credential"

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/firebase-auth-api/lg;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->a:Lcom/google/android/gms/internal/firebase-auth-api/lk;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/lk;->r0(Lcom/google/android/gms/internal/firebase-auth-api/lg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/yj;->b:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RemoteException when sending failure result for mfa"

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
