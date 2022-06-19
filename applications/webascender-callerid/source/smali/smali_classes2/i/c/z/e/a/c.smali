.class public final Li/c/z/e/a/c;
.super Li/c/b;
.source "SourceFile"


# instance fields
.field final a:Li/c/y/a;


# direct methods
.method public constructor <init>(Li/c/y/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/a/c;->a:Li/c/y/a;

    return-void
.end method


# virtual methods
.method protected m(Li/c/c;)V
    .locals 2

    .line 1
    invoke-static {}, Li/c/w/c;->b()Li/c/w/b;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Li/c/c;->a(Li/c/w/b;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Li/c/z/e/a/c;->a:Li/c/y/a;

    invoke-interface {v1}, Li/c/y/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Li/c/c;->onComplete()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
