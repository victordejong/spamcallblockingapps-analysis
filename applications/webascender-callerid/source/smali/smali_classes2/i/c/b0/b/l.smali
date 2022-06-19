.class public abstract Li/c/b0/b/l;
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

    const-string v0, "rx3.buffer-size"

    const/16 v1, 0x80

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Li/c/b0/b/l;->f:I

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
    sget v0, Li/c/b0/b/l;->f:I

    return v0
.end method

.method public static f(Li/c/b0/b/n;Li/c/b0/b/d;)Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/b/n<",
            "TT;>;",
            "Li/c/b0/b/d;",
            ")",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mode is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/b/c;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/b/c;-><init>(Li/c/b0/b/n;Li/c/b0/b/d;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p0

    return-object p0
.end method

.method public static g()Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/f/b/d;->g:Li/c/b0/b/l;

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object v0

    return-object v0
.end method

.method public static h(Li/c/b0/d/q;)Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/q<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/b/e;

    invoke-direct {v0, p0}, Li/c/b0/e/f/b/e;-><init>(Li/c/b0/d/q;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Throwable;)Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "throwable is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Li/c/b0/e/b/a;->l(Ljava/lang/Object;)Li/c/b0/d/q;

    move-result-object p0

    invoke-static {p0}, Li/c/b0/b/l;->h(Li/c/b0/d/q;)Li/c/b0/b/l;

    move-result-object p0

    return-object p0
.end method

.method public static v(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Li/c/b0/b/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/j/a;->a()Li/c/b0/b/d0;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Li/c/b0/b/l;->w(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/l;

    move-result-object p0

    return-object p0
.end method

.method public static w(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Li/c/b0/e/f/b/u;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/b/u;-><init>(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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
    instance-of v0, p1, Li/c/b0/b/o;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Li/c/b0/b/o;

    invoke-virtual {p0, p1}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    goto :goto_0

    :cond_0
    const-string v0, "subscriber is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/i/b;

    invoke-direct {v0, p1}, Li/c/b0/e/i/b;-><init>(Lo/a/b;)V

    invoke-virtual {p0, v0}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    :goto_0
    return-void
.end method

.method public final c(Li/c/b0/d/o;)Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;)",
            "Li/c/b0/b/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Li/c/b0/b/l;->e(Li/c/b0/d/o;I)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method

.method public final e(Li/c/b0/d/o;I)Li/c/b0/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I)",
            "Li/c/b0/b/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    .line 2
    invoke-static {p2, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 3
    instance-of v0, p0, Li/c/b0/e/c/i;

    if-eqz v0, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Li/c/b0/e/c/i;

    invoke-interface {p2}, Li/c/b0/e/c/i;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Li/c/b0/b/l;->g()Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2, p1}, Li/c/b0/e/f/b/q;->a(Ljava/lang/Object;Li/c/b0/d/o;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Li/c/b0/e/f/b/b;

    sget-object v1, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    invoke-direct {v0, p0, p1, p2, v1}, Li/c/b0/e/f/b/b;-><init>(Li/c/b0/b/l;Li/c/b0/d/o;ILi/c/b0/e/k/i;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method

.method public final j()Li/c/b0/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/b/l;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Li/c/b0/b/l;->k(IZZ)Li/c/b0/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final k(IZZ)Li/c/b0/b/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "capacity"

    .line 1
    invoke-static {p1, v0}, Li/c/b0/e/b/b;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Li/c/b0/e/f/b/i;

    sget-object v6, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Li/c/b0/e/f/b/i;-><init>(Li/c/b0/b/l;IZZLi/c/b0/d/a;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method

.method public final l()Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/b/j;

    invoke-direct {v0, p0}, Li/c/b0/e/f/b/j;-><init>(Li/c/b0/b/l;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final m()Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/b/l;

    invoke-direct {v0, p0}, Li/c/b0/e/f/b/l;-><init>(Li/c/b0/b/l;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final n(J)Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li/c/b0/e/b/a;->c()Li/c/b0/d/p;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Li/c/b0/b/l;->o(JLi/c/b0/d/p;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method

.method public final o(JLi/c/b0/d/p;)Li/c/b0/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "predicate is null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/b/o;

    invoke-direct {v0, p0, p1, p2, p3}, Li/c/b0/e/f/b/o;-><init>(Li/c/b0/b/l;JLi/c/b0/d/p;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final p(Li/c/b0/d/o;)Li/c/b0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/o<",
            "-",
            "Li/c/b0/b/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lo/a/a<",
            "*>;>;)",
            "Li/c/b0/b/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Li/c/b0/e/f/b/p;

    invoke-direct {v0, p0, p1}, Li/c/b0/e/f/b/p;-><init>(Li/c/b0/b/l;Li/c/b0/d/o;)V

    invoke-static {v0}, Li/c/b0/h/a;->m(Li/c/b0/b/l;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method

.method public final q()Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/p<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/b/s;

    invoke-direct {v0, p0}, Li/c/b0/e/f/b/s;-><init>(Li/c/b0/b/l;)V

    invoke-static {v0}, Li/c/b0/h/a;->n(Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object v0

    return-object v0
.end method

.method public final r(Li/c/b0/d/g;)Li/c/b0/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;)",
            "Li/c/b0/c/c;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/b/a;->e:Li/c/b0/d/g;

    sget-object v1, Li/c/b0/e/b/a;->c:Li/c/b0/d/a;

    invoke-virtual {p0, p1, v0, v1}, Li/c/b0/b/l;->s(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final s(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/d/g<",
            "-TT;>;",
            "Li/c/b0/d/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/d/a;",
            ")",
            "Li/c/b0/c/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Li/c/b0/e/i/a;

    sget-object v1, Li/c/b0/e/f/b/h;->INSTANCE:Li/c/b0/e/f/b/h;

    invoke-direct {v0, p1, p2, p3, v1}, Li/c/b0/e/i/a;-><init>(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;Li/c/b0/d/g;)V

    .line 5
    invoke-virtual {p0, v0}, Li/c/b0/b/l;->t(Li/c/b0/b/o;)V

    return-object v0
.end method

.method public final t(Li/c/b0/b/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/o<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "subscriber is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Li/c/b0/h/a;->A(Li/c/b0/b/l;Lo/a/b;)Lo/a/b;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Li/c/b0/b/l;->u(Lo/a/b;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

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

.method protected abstract u(Lo/a/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation
.end method
