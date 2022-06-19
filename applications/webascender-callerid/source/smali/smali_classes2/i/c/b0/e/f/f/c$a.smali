.class final Li/c/b0/e/f/f/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/g0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/a;

.field h:Li/c/b0/c/c;


# direct methods
.method constructor <init>(Li/c/b0/b/g0;Li/c/b0/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;",
            "Li/c/b0/d/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/c$a;->f:Li/c/b0/b/g0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/f/c$a;->g:Li/c/b0/d/a;

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/f/c$a;->g:Li/c/b0/d/a;

    invoke-interface {v0}, Li/c/b0/d/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/f/c$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/f/c$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/f/c$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p1}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0}, Li/c/b0/e/f/f/c$a;->a()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/f/c$a;->h:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/c$a;->h:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/f/c$a;->f:Li/c/b0/b/g0;

    invoke-interface {p1, p0}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/f/c$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p1}, Li/c/b0/b/g0;->onSuccess(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Li/c/b0/e/f/f/c$a;->a()V

    return-void
.end method
