.class final Li/c/z/e/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/q;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/e/b;
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
        "Li/c/q<",
        "TT;>;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/t<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final g:Li/c/y/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/e<",
            "-TT;>;"
        }
    .end annotation
.end field

.field h:Li/c/w/b;

.field i:Z


# direct methods
.method constructor <init>(Li/c/t;Li/c/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Li/c/y/e<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/e/b$a;->f:Li/c/t;

    .line 3
    iput-object p2, p0, Li/c/z/e/e/b$a;->g:Li/c/y/e;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/e/b$a;->h:Li/c/w/b;

    invoke-static {v0, p1}, Li/c/z/a/b;->validate(Li/c/w/b;Li/c/w/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/e/b$a;->h:Li/c/w/b;

    .line 3
    iget-object p1, p0, Li/c/z/e/e/b$a;->f:Li/c/t;

    invoke-interface {p1, p0}, Li/c/t;->a(Li/c/w/b;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/e/b$a;->h:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/e/b$a;->h:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/z/e/e/b$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/e/e/b$a;->i:Z

    .line 3
    iget-object v0, p0, Li/c/z/e/e/b$a;->f:Li/c/t;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Li/c/t;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/e/b$a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/z/e/e/b$a;->i:Z

    .line 4
    iget-object v0, p0, Li/c/z/e/e/b$a;->f:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/z/e/e/b$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Li/c/z/e/e/b$a;->g:Li/c/y/e;

    invoke-interface {v0, p1}, Li/c/y/e;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Li/c/z/e/e/b$a;->i:Z

    .line 4
    iget-object p1, p0, Li/c/z/e/e/b$a;->h:Li/c/w/b;

    invoke-interface {p1}, Li/c/w/b;->dispose()V

    .line 5
    iget-object p1, p0, Li/c/z/e/e/b$a;->f:Li/c/t;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Li/c/t;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Li/c/z/e/e/b$a;->h:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    .line 8
    invoke-virtual {p0, p1}, Li/c/z/e/e/b$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
