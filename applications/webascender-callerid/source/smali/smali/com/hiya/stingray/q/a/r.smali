.class public Lcom/hiya/stingray/q/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/q/a/q;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/d;

.field private final b:Lcom/hiya/stingray/q/a/k;

.field private final c:Lg/g/a/a/h/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/a/k;Lcom/google/android/gms/common/api/d;Lg/g/a/a/h/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/a/r;->b:Lcom/hiya/stingray/q/a/k;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/q/a/r;->a:Lcom/google/android/gms/common/api/d;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/q/a/r;->c:Lg/g/a/a/h/a;

    return-void
.end method

.method private c(Lcom/google/android/gms/common/api/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/r;->a:Lcom/google/android/gms/common/api/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/q/a/r;->a:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->c()V

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/a/a;->f:Lcom/google/android/gms/auth/api/signin/b;

    iget-object v1, p0, Lcom/hiya/stingray/q/a/r;->a:Lcom/google/android/gms/common/api/d;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/b;->a(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/e;->e(Lcom/google/android/gms/common/api/j;)V

    return-void
.end method

.method private synthetic d(Lcom/google/android/gms/common/api/j;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/a/r;->f()V

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/a/r;->c(Lcom/google/android/gms/common/api/j;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/q/a/r;->c:Lg/g/a/a/h/a;

    invoke-interface {p1}, Lg/g/a/a/h/a;->d()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/r;->b:Lcom/hiya/stingray/q/a/k;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/k;->b()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/api/j;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/a/h;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/q/a/h;-><init>(Lcom/hiya/stingray/q/a/r;Lcom/google/android/gms/common/api/j;)V

    invoke-static {v0}, Li/c/b0/b/e;->t(Ljava/util/concurrent/Callable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lcom/google/android/gms/common/api/j;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/a/r;->d(Lcom/google/android/gms/common/api/j;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/r;->b:Lcom/hiya/stingray/q/a/k;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/k;->c()V

    return-void
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/r;->b:Lcom/hiya/stingray/q/a/k;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/k;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
