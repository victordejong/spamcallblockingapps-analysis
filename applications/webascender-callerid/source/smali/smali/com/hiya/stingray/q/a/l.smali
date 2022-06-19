.class public Lcom/hiya/stingray/q/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/q/a/k;


# instance fields
.field private final a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/a/l;->a:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method

.method static synthetic e(Li/c/b0/b/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current User is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Li/c/b0/b/k;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/g;->y1(Z)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/a/c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/a/c;-><init>(Li/c/b0/b/x;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->d(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/a/a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/a/a;-><init>(Li/c/b0/b/x;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->f(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/a/b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/a/b;-><init>(Li/c/b0/b/x;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->a(Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method static synthetic f(Li/c/b0/b/x;Lcom/google/android/gms/tasks/g;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/i;

    invoke-virtual {p1}, Lcom/google/firebase/auth/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Lcom/google/firebase/FirebaseException;

    const-string v0, "Error in retrieving authentication token from the Firebase. Empty Token!"

    invoke-direct {p1, v0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Li/c/b0/b/k;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Lg/g/a/a/i/o/a;

    invoke-direct {p1}, Lg/g/a/a/i/o/a;-><init>()V

    .line 6
    invoke-virtual {p1, v1}, Lg/g/a/a/i/o/a;->setAccessToken(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0, p1}, Li/c/b0/b/k;->onNext(Ljava/lang/Object;)V

    .line 8
    invoke-interface {p0}, Li/c/b0/b/k;->onComplete()V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->n()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_3
    const-string v0, ":"

    if-eqz v1, :cond_4

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, "Nothing"

    .line 13
    :goto_1
    new-instance v0, Lcom/google/firebase/FirebaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in retrieving authentication token from the Firebase, Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Li/c/b0/b/k;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method static synthetic g(Li/c/b0/b/x;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to retrieve Firebase user token"

    .line 1
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0, p1}, Li/c/b0/b/k;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic h(Li/c/b0/b/x;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/FirebaseException;

    const-string v1, "getIdToken cancelled"

    invoke-direct {v0, v1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    .line 2
    invoke-interface {p0}, Li/c/b0/b/k;->onComplete()V

    return-void
.end method


# virtual methods
.method public a()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/o/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/stingray/q/a/d;->a:Lcom/hiya/stingray/q/a/d;

    invoke-static {v0}, Li/c/b0/b/v;->create(Li/c/b0/b/y;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/a/l;->d()Lcom/google/firebase/auth/g;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/l;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->j()V

    return-void
.end method

.method public d()Lcom/google/firebase/auth/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/l;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/g;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/a/l;->d()Lcom/google/firebase/auth/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/q/a/l;->d()Lcom/google/firebase/auth/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
