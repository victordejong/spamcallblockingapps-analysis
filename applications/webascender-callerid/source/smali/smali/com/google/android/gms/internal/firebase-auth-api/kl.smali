.class public final Lcom/google/android/gms/internal/firebase-auth-api/kl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/ll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/ll<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/ll;Lcom/google/android/gms/tasks/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/ll<",
            "TResultT;TCallbackT;>;",
            "Lcom/google/android/gms/tasks/h<",
            "TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->b:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->b:Lcom/google/android/gms/tasks/h;

    const-string v1, "completion source cannot be null"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/ll;->r:Lcom/google/android/gms/internal/firebase-auth-api/lg;

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->b:Lcom/google/android/gms/tasks/h;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/ll;->c:Lcom/google/firebase/c;

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/c;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->r:Lcom/google/android/gms/internal/firebase-auth-api/lg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ki;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reauthenticateWithCredential"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ki;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reauthenticateWithCredentialWithData"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->a:Lcom/google/android/gms/internal/firebase-auth-api/ll;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/ll;->d:Lcom/google/firebase/auth/g;

    .line 5
    :goto_1
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->c(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/gms/internal/firebase-auth-api/lg;Lcom/google/firebase/auth/g;)Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/ll;->o:Lcom/google/firebase/auth/c;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->b:Lcom/google/android/gms/tasks/h;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/ll;->p:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/ll;->q:Ljava/lang/String;

    .line 7
    invoke-static {p2, v0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->b(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/c;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->b:Lcom/google/android/gms/tasks/h;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/kl;->b:Lcom/google/android/gms/tasks/h;

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-void
.end method
