.class public final Li/c/z/e/c/r;
.super Li/c/z/e/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/c/r$a;,
        Li/c/z/e/c/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/e/c/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/r;


# direct methods
.method public constructor <init>(Li/c/n;Li/c/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/n<",
            "TT;>;",
            "Li/c/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/e/c/a;-><init>(Li/c/n;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/c/r;->g:Li/c/r;

    return-void
.end method


# virtual methods
.method protected u(Li/c/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/z/e/c/r$a;

    invoke-direct {v0, p1}, Li/c/z/e/c/r$a;-><init>(Li/c/l;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/l;->a(Li/c/w/b;)V

    .line 3
    iget-object p1, v0, Li/c/z/e/c/r$a;->f:Li/c/z/a/e;

    iget-object v1, p0, Li/c/z/e/c/r;->g:Li/c/r;

    new-instance v2, Li/c/z/e/c/r$b;

    iget-object v3, p0, Li/c/z/e/c/a;->f:Li/c/n;

    invoke-direct {v2, v0, v3}, Li/c/z/e/c/r$b;-><init>(Li/c/l;Li/c/n;)V

    invoke-virtual {v1, v2}, Li/c/r;->b(Ljava/lang/Runnable;)Li/c/w/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/z/a/e;->a(Li/c/w/b;)Z

    return-void
.end method
