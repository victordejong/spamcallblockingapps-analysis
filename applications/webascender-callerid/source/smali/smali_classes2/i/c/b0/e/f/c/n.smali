.class public final Li/c/b0/e/f/c/n;
.super Li/c/b0/e/f/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/c/n$a;,
        Li/c/b0/e/f/c/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/d0;


# direct methods
.method public constructor <init>(Li/c/b0/b/t;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/t<",
            "TT;>;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/c/a;-><init>(Li/c/b0/b/t;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/c/n;->g:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method protected r(Li/c/b0/b/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/c/n$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/c/n$a;-><init>(Li/c/b0/b/r;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/r;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, v0, Li/c/b0/e/f/c/n$a;->f:Li/c/b0/e/a/f;

    iget-object v1, p0, Li/c/b0/e/f/c/n;->g:Li/c/b0/b/d0;

    new-instance v2, Li/c/b0/e/f/c/n$b;

    iget-object v3, p0, Li/c/b0/e/f/c/a;->f:Li/c/b0/b/t;

    invoke-direct {v2, v0, v3}, Li/c/b0/e/f/c/n$b;-><init>(Li/c/b0/b/r;Li/c/b0/b/t;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/d0;->d(Ljava/lang/Runnable;)Li/c/b0/c/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    return-void
.end method
