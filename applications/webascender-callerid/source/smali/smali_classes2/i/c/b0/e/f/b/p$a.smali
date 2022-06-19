.class final Li/c/b0/e/f/b/p$a;
.super Li/c/b0/e/f/b/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/p;
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
        "Li/c/b0/e/f/b/n<",
        "TT;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/a/b;Li/c/b0/i/a;Lo/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;",
            "Li/c/b0/i/a<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lo/a/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li/c/b0/e/f/b/n;-><init>(Lo/a/b;Li/c/b0/i/a;Lo/a/c;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/n;->p:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/n;->n:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/e/f/b/n;->h(Ljava/lang/Object;)V

    return-void
.end method
