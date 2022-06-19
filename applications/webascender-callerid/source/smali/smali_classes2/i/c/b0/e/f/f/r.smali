.class public final Li/c/b0/e/f/f/r;
.super Li/c/b0/b/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/f/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/i0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/b/d0;


# direct methods
.method public constructor <init>(Li/c/b0/b/i0;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/i0<",
            "+TT;>;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/e0;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/r;->f:Li/c/b0/b/i0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/f/r;->g:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method protected C(Li/c/b0/b/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/f/r$a;

    iget-object v1, p0, Li/c/b0/e/f/f/r;->f:Li/c/b0/b/i0;

    invoke-direct {v0, p1, v1}, Li/c/b0/e/f/f/r$a;-><init>(Li/c/b0/b/g0;Li/c/b0/b/i0;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/f/r;->g:Li/c/b0/b/d0;

    invoke-virtual {p1, v0}, Li/c/b0/b/d0;->d(Ljava/lang/Runnable;)Li/c/b0/c/c;

    move-result-object p1

    .line 4
    iget-object v0, v0, Li/c/b0/e/f/f/r$a;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0, p1}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    return-void
.end method
