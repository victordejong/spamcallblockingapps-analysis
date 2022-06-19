.class abstract Lcom/google/android/gms/internal/firebase-auth-api/ll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/ki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/ki<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zj;",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field protected final a:I

.field final b:Lcom/google/android/gms/internal/firebase-auth-api/il;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/il;"
        }
    .end annotation
.end field

.field protected c:Lcom/google/firebase/c;

.field protected d:Lcom/google/firebase/auth/g;

.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected f:Lcom/google/firebase/auth/internal/n;

.field protected final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/s$b;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/concurrent/Executor;

.field protected i:Lcom/google/android/gms/internal/firebase-auth-api/en;

.field protected j:Lcom/google/android/gms/internal/firebase-auth-api/xm;

.field protected k:Lcom/google/android/gms/internal/firebase-auth-api/jm;

.field protected l:Lcom/google/android/gms/internal/firebase-auth-api/qn;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Lcom/google/firebase/auth/c;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Lcom/google/android/gms/internal/firebase-auth-api/lg;

.field private s:Z

.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field protected u:Lcom/google/android/gms/internal/firebase-auth-api/kl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/kl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/il;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/il;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->b:Lcom/google/android/gms/internal/firebase-auth-api/il;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->a:I

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/internal/firebase-auth-api/ll;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/ll;->b()V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->s:Z

    const-string v0, "no success or failure set on method implementation"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/r;->o(ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/internal/firebase-auth-api/ll;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->s:Z

    return p1
.end method

.method static synthetic l(Lcom/google/android/gms/internal/firebase-auth-api/ll;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f:Lcom/google/firebase/auth/internal/n;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/firebase/auth/internal/n;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public final c(Lcom/google/firebase/c;)Lcom/google/android/gms/internal/firebase-auth-api/ll;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/ll<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/c;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c:Lcom/google/firebase/c;

    return-object p0
.end method

.method public final d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/ll;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/g;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/ll<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/auth/g;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d:Lcom/google/firebase/auth/g;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/ll;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/ll<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final f(Lcom/google/firebase/auth/internal/n;)Lcom/google/android/gms/internal/firebase-auth-api/ll;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/n;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/ll<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external failure callback cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/auth/internal/n;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->f:Lcom/google/firebase/auth/internal/n;

    return-object p0
.end method

.method public final g(Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/ll;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/s$b;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/ll<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p4, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->c(Ljava/lang/String;Lcom/google/firebase/auth/s$b;Lcom/google/android/gms/internal/firebase-auth-api/ll;)Lcom/google/firebase/auth/s$b;

    move-result-object p1

    iget-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g:Ljava/util/List;

    .line 2
    monitor-enter p4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/auth/s$b;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->g:Ljava/util/List;

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/cl;->l(Landroid/app/Activity;Ljava/util/List;)V

    .line 6
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->h:Ljava/util/concurrent/Executor;

    return-object p0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->s:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->t:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->u:Lcom/google/android/gms/internal/firebase-auth-api/kl;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/kl;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->s:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->u:Lcom/google/android/gms/internal/firebase-auth-api/kl;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/kl;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
