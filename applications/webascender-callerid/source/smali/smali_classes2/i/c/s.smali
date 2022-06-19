.class public abstract Li/c/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/u<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Ljava/lang/Object;)Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Li/c/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "value is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/f/c;

    invoke-direct {v0, p0}, Li/c/z/e/f/c;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/a0/a;->n(Li/c/s;)Li/c/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Li/c/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "subscriber is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Li/c/a0/a;->w(Li/c/s;Li/c/t;)Li/c/t;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Li/c/s;->j(Li/c/t;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0

    :catch_0
    move-exception p1

    .line 9
    throw p1
.end method

.method public final d(Li/c/y/c;)Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/f/a;

    invoke-direct {v0, p0, p1}, Li/c/z/e/f/a;-><init>(Li/c/u;Li/c/y/c;)V

    invoke-static {v0}, Li/c/a0/a;->n(Li/c/s;)Li/c/s;

    move-result-object p1

    return-object p1
.end method

.method public final e(Li/c/y/c;)Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-TT;>;)",
            "Li/c/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/f/b;

    invoke-direct {v0, p0, p1}, Li/c/z/e/f/b;-><init>(Li/c/u;Li/c/y/c;)V

    invoke-static {v0}, Li/c/a0/a;->n(Li/c/s;)Li/c/s;

    move-result-object p1

    return-object p1
.end method

.method public final f(Li/c/y/e;)Li/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/e<",
            "-TT;>;)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/c/f;

    invoke-direct {v0, p0, p1}, Li/c/z/e/c/f;-><init>(Li/c/u;Li/c/y/e;)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1
.end method

.method public final h(Li/c/s;)Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/s<",
            "+TT;>;)",
            "Li/c/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeSingleInCaseOfError is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/z/b/a;->e(Ljava/lang/Object;)Li/c/y/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/s;->i(Li/c/y/d;)Li/c/s;

    move-result-object p1

    return-object p1
.end method

.method public final i(Li/c/y/d;)Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/u<",
            "+TT;>;>;)",
            "Li/c/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunctionInCaseOfError is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/f/d;

    invoke-direct {v0, p0, p1}, Li/c/z/e/f/d;-><init>(Li/c/u;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->n(Li/c/s;)Li/c/s;

    move-result-object p1

    return-object p1
.end method

.method protected abstract j(Li/c/t;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final k()Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/z/c/b;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Li/c/z/c/b;

    invoke-interface {v0}, Li/c/z/c/b;->b()Li/c/f;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Li/c/z/e/f/e;

    invoke-direct {v0, p0}, Li/c/z/e/f/e;-><init>(Li/c/u;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object v0

    return-object v0
.end method
