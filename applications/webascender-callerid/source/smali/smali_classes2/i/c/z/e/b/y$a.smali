.class final Li/c/z/e/b/y$a;
.super Li/c/z/i/c;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Lo/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/y;
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
        "Li/c/z/i/c<",
        "TU;>;",
        "Li/c/i<",
        "TT;>;",
        "Lo/a/c;"
    }
.end annotation


# instance fields
.field h:Lo/a/c;


# direct methods
.method constructor <init>(Lo/a/b;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TU;>;TU;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/i/c;-><init>(Lo/a/b;)V

    .line 2
    iput-object p2, p0, Li/c/z/i/c;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Li/c/z/i/c;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/z/e/b/y$a;->h:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/i/c;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Li/c/z/i/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Li/c/z/i/c;->g:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Li/c/z/i/c;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/z/i/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/b/y$a;->h:Lo/a/c;

    invoke-static {v0, p1}, Li/c/z/i/g;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/b/y$a;->h:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/z/i/c;->f:Lo/a/b;

    invoke-interface {v0, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_0
    return-void
.end method
