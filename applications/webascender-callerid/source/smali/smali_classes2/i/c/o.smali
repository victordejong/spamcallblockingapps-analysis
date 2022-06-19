.class public abstract Li/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/p<",
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

.method public static h(Ljava/lang/Iterable;)Li/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Li/c/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/e/e;

    invoke-direct {v0, p0}, Li/c/z/e/e/e;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Li/c/a0/a;->m(Li/c/o;)Li/c/o;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)Li/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Li/c/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "The item is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/e/f;

    invoke-direct {v0, p0}, Li/c/z/e/e/f;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/a0/a;->m(Li/c/o;)Li/c/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Li/c/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Li/c/a0/a;->v(Li/c/o;Li/c/q;)Li/c/q;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Li/c/o;->k(Li/c/q;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw v0

    :catch_0
    move-exception p1

    .line 10
    throw p1
.end method

.method public final c(Li/c/y/e;)Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/e<",
            "-TT;>;)",
            "Li/c/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/e/b;

    invoke-direct {v0, p0, p1}, Li/c/z/e/e/b;-><init>(Li/c/p;Li/c/y/e;)V

    invoke-static {v0}, Li/c/a0/a;->n(Li/c/s;)Li/c/s;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Li/c/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "element is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/c/z/b/a;->c(Ljava/lang/Object;)Li/c/y/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Li/c/o;->c(Li/c/y/e;)Li/c/s;

    move-result-object p1

    return-object p1
.end method

.method public final e(Li/c/y/e;)Li/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/e<",
            "-TT;>;)",
            "Li/c/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/e/c;

    invoke-direct {v0, p0, p1}, Li/c/z/e/e/c;-><init>(Li/c/p;Li/c/y/e;)V

    invoke-static {v0}, Li/c/a0/a;->m(Li/c/o;)Li/c/o;

    move-result-object p1

    return-object p1
.end method

.method public final f(Li/c/y/d;)Li/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;)",
            "Li/c/b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/o;->g(Li/c/y/d;Z)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final g(Li/c/y/d;Z)Li/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/d;",
            ">;Z)",
            "Li/c/b;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/e/d;

    invoke-direct {v0, p0, p1, p2}, Li/c/z/e/e/d;-><init>(Li/c/p;Li/c/y/d;Z)V

    invoke-static {v0}, Li/c/a0/a;->j(Li/c/b;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final j(Li/c/y/d;)Li/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+TR;>;)",
            "Li/c/o<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/e/g;

    invoke-direct {v0, p0, p1}, Li/c/z/e/e/g;-><init>(Li/c/p;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->m(Li/c/o;)Li/c/o;

    move-result-object p1

    return-object p1
.end method

.method protected abstract k(Li/c/q;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final l(Li/c/p;)Li/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/p<",
            "+TT;>;)",
            "Li/c/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/e/i;

    invoke-direct {v0, p0, p1}, Li/c/z/e/e/i;-><init>(Li/c/p;Li/c/p;)V

    invoke-static {v0}, Li/c/a0/a;->m(Li/c/o;)Li/c/o;

    move-result-object p1

    return-object p1
.end method

.method public final m(Li/c/a;)Li/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/a;",
            ")",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/b/n;

    invoke-direct {v0, p0}, Li/c/z/e/b/n;-><init>(Li/c/o;)V

    .line 2
    sget-object v1, Li/c/o$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Li/c/f;->y()Li/c/f;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Li/c/z/e/b/u;

    invoke-direct {p1, v0}, Li/c/z/e/b/u;-><init>(Li/c/f;)V

    invoke-static {p1}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 5
    :cond_2
    invoke-virtual {v0}, Li/c/f;->B()Li/c/f;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {v0}, Li/c/f;->A()Li/c/f;

    move-result-object p1

    return-object p1
.end method
