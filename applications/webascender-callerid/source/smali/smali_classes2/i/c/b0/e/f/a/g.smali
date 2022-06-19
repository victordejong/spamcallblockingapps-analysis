.class public final Li/c/b0/e/f/a/g;
.super Li/c/b0/b/e;
.source "SourceFile"


# instance fields
.field final f:Li/c/b0/d/a;


# direct methods
.method public constructor <init>(Li/c/b0/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/g;->f:Li/c/b0/d/a;

    return-void
.end method


# virtual methods
.method protected F(Li/c/b0/b/g;)V
    .locals 2

    .line 1
    invoke-static {}, Li/c/b0/c/b;->b()Li/c/b0/c/c;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/f/a/g;->f:Li/c/b0/d/a;

    invoke-interface {v1}, Li/c/b0/d/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1}, Li/c/b0/b/g;->onComplete()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-interface {p1, v1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
