.class final Li/c/z/e/c/t$a;
.super Li/c/z/i/c;
.source "SourceFile"

# interfaces
.implements Li/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/t;
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
        "Li/c/z/i/c<",
        "TT;>;",
        "Li/c/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field h:Li/c/w/b;


# direct methods
.method constructor <init>(Lo/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/i/c;-><init>(Lo/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/t$a;->h:Li/c/w/b;

    invoke-static {v0, p1}, Li/c/z/a/b;->validate(Li/c/w/b;Li/c/w/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/c/t$a;->h:Li/c/w/b;

    .line 3
    iget-object p1, p0, Li/c/z/i/c;->f:Lo/a/b;

    invoke-interface {p1, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Li/c/z/i/c;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/z/e/c/t$a;->h:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/i/c;->f:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/i/c;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/c/z/i/c;->b(Ljava/lang/Object;)V

    return-void
.end method
