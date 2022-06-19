.class final Li/c/z/e/b/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Li/c/i<",
        "TT;>;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/t<",
            "-TU;>;"
        }
    .end annotation
.end field

.field g:Lo/a/c;

.field h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/t;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/z$a;->f:Li/c/t;

    .line 3
    iput-object p2, p0, Li/c/z/e/b/z$a;->h:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/z$a;->g:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 2
    sget-object v0, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    iput-object v0, p0, Li/c/z/e/b/z$a;->g:Lo/a/c;

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/b/z$a;->g:Lo/a/c;

    sget-object v1, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    sget-object v0, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    iput-object v0, p0, Li/c/z/e/b/z$a;->g:Lo/a/c;

    .line 2
    iget-object v0, p0, Li/c/z/e/b/z$a;->f:Li/c/t;

    iget-object v1, p0, Li/c/z/e/b/z$a;->h:Ljava/util/Collection;

    invoke-interface {v0, v1}, Li/c/t;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Li/c/z/e/b/z$a;->h:Ljava/util/Collection;

    .line 2
    sget-object v0, Li/c/z/i/g;->CANCELLED:Li/c/z/i/g;

    iput-object v0, p0, Li/c/z/e/b/z$a;->g:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/z/e/b/z$a;->f:Li/c/t;

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
    iget-object v0, p0, Li/c/z/e/b/z$a;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/b/z$a;->g:Lo/a/c;

    invoke-static {v0, p1}, Li/c/z/i/g;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/b/z$a;->g:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/z/e/b/z$a;->f:Li/c/t;

    invoke-interface {v0, p0}, Li/c/t;->a(Li/c/w/b;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_0
    return-void
.end method
