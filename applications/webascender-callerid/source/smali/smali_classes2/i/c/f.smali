.class public abstract Li/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/a/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Li/c/f;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()I
    .locals 1

    .line 1
    sget v0, Li/c/f;->f:I

    return v0
.end method

.method public static e(Li/c/h;Li/c/a;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/h<",
            "TT;>;",
            "Li/c/a;",
            ")",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mode is null"

    .line 2
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/z/e/b/c;

    invoke-direct {v0, p0, p1}, Li/c/z/e/b/c;-><init>(Li/c/h;Li/c/a;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p0

    return-object p0
.end method

.method private f(Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;)Li/c/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-TT;>;",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/y/a;",
            "Li/c/y/a;",
            ")",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 4
    invoke-static {p4, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/z/e/b/d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Li/c/z/e/b/d;-><init>(Li/c/f;Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public static i()Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/e/b/g;->g:Li/c/f;

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object v0

    return-object v0
.end method

.method public static varargs r([Ljava/lang/Object;)Li/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/f;->i()Li/c/f;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aget-object p0, p0, v0

    invoke-static {p0}, Li/c/f;->t(Ljava/lang/Object;)Li/c/f;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Li/c/z/e/b/l;

    invoke-direct {v0, p0}, Li/c/z/e/b/l;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Iterable;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/b/m;

    invoke-direct {v0, p0}, Li/c/z/e/b/m;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/b/p;

    invoke-direct {v0, p0}, Li/c/z/e/b/p;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lo/a/a;Lo/a/a;Lo/a/a;)Li/c/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/a/a<",
            "+TT;>;",
            "Lo/a/a<",
            "+TT;>;",
            "Lo/a/a<",
            "+TT;>;)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    .line 1
    invoke-static {p0, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    .line 2
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    .line 3
    invoke-static {p2, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Lo/a/a;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    .line 4
    invoke-static {v1}, Li/c/f;->r([Ljava/lang/Object;)Li/c/f;

    move-result-object p0

    invoke-static {}, Li/c/z/b/a;->d()Li/c/y/d;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Li/c/f;->l(Li/c/y/d;ZI)Li/c/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/b/t;

    invoke-direct {v0, p0}, Li/c/z/e/b/t;-><init>(Li/c/f;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final B()Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/b/v;

    invoke-direct {v0, p0}, Li/c/z/e/b/v;-><init>(Li/c/f;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final C()Li/c/x/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/x/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/f;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Li/c/f;->D(I)Li/c/x/a;

    move-result-object v0

    return-object v0
.end method

.method public final D(I)Li/c/x/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li/c/x/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->e(ILjava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Li/c/z/e/b/w;->M(Li/c/f;I)Li/c/x/a;

    move-result-object p1

    return-object p1
.end method

.method public final E(Ljava/util/Comparator;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sortFunction"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Li/c/f;->J()Li/c/s;

    move-result-object v0

    invoke-virtual {v0}, Li/c/s;->k()Li/c/f;

    move-result-object v0

    invoke-static {p1}, Li/c/z/b/a;->f(Ljava/util/Comparator;)Li/c/y/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/f;->u(Li/c/y/d;)Li/c/f;

    move-result-object p1

    invoke-static {}, Li/c/z/b/a;->d()Li/c/y/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/f;->n(Li/c/y/d;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final F(Li/c/y/c;)Li/c/w/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-TT;>;)",
            "Li/c/w/b;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/z/b/a;->e:Li/c/y/c;

    sget-object v1, Li/c/z/b/a;->c:Li/c/y/a;

    sget-object v2, Li/c/z/e/b/o;->INSTANCE:Li/c/z/e/b/o;

    invoke-virtual {p0, p1, v0, v1, v2}, Li/c/f;->G(Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/c;)Li/c/w/b;

    move-result-object p1

    return-object p1
.end method

.method public final G(Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/c;)Li/c/w/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-TT;>;",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/y/a;",
            "Li/c/y/c<",
            "-",
            "Lo/a/c;",
            ">;)",
            "Li/c/w/b;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    .line 4
    invoke-static {p4, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Li/c/z/h/c;

    invoke-direct {v0, p1, p2, p3, p4}, Li/c/z/h/c;-><init>(Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/c;)V

    .line 6
    invoke-virtual {p0, v0}, Li/c/f;->H(Li/c/i;)V

    return-object v0
.end method

.method public final H(Li/c/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/i<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Li/c/a0/a;->x(Li/c/f;Lo/a/b;)Lo/a/b;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Li/c/f;->I(Lo/a/b;)V
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

.method protected abstract I(Lo/a/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final J()Li/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/s<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/b/z;

    invoke-direct {v0, p0}, Li/c/z/e/b/z;-><init>(Li/c/f;)V

    invoke-static {v0}, Li/c/a0/a;->n(Li/c/s;)Li/c/s;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lo/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Li/c/i;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Li/c/i;

    invoke-virtual {p0, p1}, Li/c/f;->H(Li/c/i;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    .line 3
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/z/h/d;

    invoke-direct {v0, p1}, Li/c/z/h/d;-><init>(Lo/a/b;)V

    invoke-virtual {p0, v0}, Li/c/f;->H(Li/c/i;)V

    :goto_0
    return-void
.end method

.method public final c(Li/c/y/d;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;)",
            "Li/c/f<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/f;->d(Li/c/y/d;I)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final d(Li/c/y/d;I)Li/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I)",
            "Li/c/f<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Li/c/z/b/b;->e(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Li/c/z/c/g;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Li/c/z/c/g;

    invoke-interface {p2}, Li/c/z/c/g;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Li/c/f;->i()Li/c/f;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Li/c/z/e/b/x;->a(Ljava/lang/Object;Li/c/y/d;)Li/c/f;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Li/c/z/e/b/b;

    sget-object v1, Li/c/z/j/f;->IMMEDIATE:Li/c/z/j/f;

    invoke-direct {v0, p0, p1, p2, v1}, Li/c/z/e/b/b;-><init>(Li/c/f;Li/c/y/d;ILi/c/z/j/f;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final g(Li/c/y/c;)Li/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-TT;>;)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/z/b/a;->b()Li/c/y/c;

    move-result-object v0

    sget-object v1, Li/c/z/b/a;->c:Li/c/y/a;

    invoke-direct {p0, p1, v0, v1, v1}, Li/c/f;->f(Li/c/y/c;Li/c/y/c;Li/c/y/a;Li/c/y/a;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final h(J)Li/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    new-instance v0, Li/c/z/e/b/f;

    invoke-direct {v0, p0, p1, p2}, Li/c/z/e/b/f;-><init>(Li/c/f;J)V

    invoke-static {v0}, Li/c/a0/a;->l(Li/c/j;)Li/c/j;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Li/c/y/e;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/e<",
            "-TT;>;)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/b/h;

    invoke-direct {v0, p0, p1}, Li/c/z/e/b/h;-><init>(Li/c/f;Li/c/y/e;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final k()Li/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/j<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Li/c/f;->h(J)Li/c/j;

    move-result-object v0

    return-object v0
.end method

.method public final l(Li/c/y/d;ZI)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;ZI)",
            "Li/c/f<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/f;->b()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Li/c/f;->m(Li/c/y/d;ZII)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final m(Li/c/y/d;ZII)Li/c/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;ZII)",
            "Li/c/f<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Li/c/z/b/b;->e(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    .line 3
    invoke-static {p4, v0}, Li/c/z/b/b;->e(ILjava/lang/String;)I

    .line 4
    instance-of v0, p0, Li/c/z/c/g;

    if-eqz v0, :cond_1

    .line 5
    move-object p2, p0

    check-cast p2, Li/c/z/c/g;

    invoke-interface {p2}, Li/c/z/c/g;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-static {}, Li/c/f;->i()Li/c/f;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {p2, p1}, Li/c/z/e/b/x;->a(Ljava/lang/Object;Li/c/y/d;)Li/c/f;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance v6, Li/c/z/e/b/i;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Li/c/z/e/b/i;-><init>(Li/c/f;Li/c/y/d;ZII)V

    invoke-static {v6}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final n(Li/c/y/d;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Li/c/f<",
            "TU;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/f;->b()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Li/c/f;->o(Li/c/y/d;I)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final o(Li/c/y/d;I)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "Li/c/f<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p2, v0}, Li/c/z/b/b;->e(ILjava/lang/String;)I

    .line 3
    new-instance v0, Li/c/z/e/b/k;

    invoke-direct {v0, p0, p1, p2}, Li/c/z/e/b/k;-><init>(Li/c/f;Li/c/y/d;I)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final p(Li/c/y/d;)Li/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/n<",
            "+TR;>;>;)",
            "Li/c/f<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Li/c/f;->q(Li/c/y/d;ZI)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final q(Li/c/y/d;ZI)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/n<",
            "+TR;>;>;ZI)",
            "Li/c/f<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    .line 2
    invoke-static {p3, v0}, Li/c/z/b/b;->e(ILjava/lang/String;)I

    .line 3
    new-instance v0, Li/c/z/e/b/j;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/z/e/b/j;-><init>(Li/c/f;Li/c/y/d;ZI)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final u(Li/c/y/d;)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/y/d<",
            "-TT;+TR;>;)",
            "Li/c/f<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/z/e/b/q;

    invoke-direct {v0, p0, p1}, Li/c/z/e/b/q;-><init>(Li/c/f;Li/c/y/d;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final w(Li/c/r;)Li/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/r;",
            ")",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/f;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Li/c/f;->x(Li/c/r;ZI)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final x(Li/c/r;ZI)Li/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/r;",
            "ZI)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 2
    invoke-static {p3, v0}, Li/c/z/b/b;->e(ILjava/lang/String;)I

    .line 3
    new-instance v0, Li/c/z/e/b/r;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/z/e/b/r;-><init>(Li/c/f;Li/c/r;ZI)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final y()Li/c/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/f;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Li/c/f;->z(IZZ)Li/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final z(IZZ)Li/c/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Li/c/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    .line 1
    invoke-static {p1, v0}, Li/c/z/b/b;->e(ILjava/lang/String;)I

    .line 2
    new-instance v0, Li/c/z/e/b/s;

    sget-object v6, Li/c/z/b/a;->c:Li/c/y/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Li/c/z/e/b/s;-><init>(Li/c/f;IZZLi/c/y/a;)V

    invoke-static {v0}, Li/c/a0/a;->k(Li/c/f;)Li/c/f;

    move-result-object p1

    return-object p1
.end method
