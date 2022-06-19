.class public final Li/c/b0/e/f/e/o3;
.super Li/c/b0/e/f/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/o3$b;,
        Li/c/b0/e/f/e/o3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/b/d0;


# direct methods
.method public constructor <init>(Li/c/b0/b/a0;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/a0<",
            "TT;>;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/f/e/a;-><init>(Li/c/b0/b/a0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/o3;->g:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method public subscribeActual(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/o3$a;

    invoke-direct {v0, p1}, Li/c/b0/e/f/e/o3$a;-><init>(Li/c/b0/b/c0;)V

    .line 2
    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/o3;->g:Li/c/b0/b/d0;

    new-instance v1, Li/c/b0/e/f/e/o3$b;

    invoke-direct {v1, p0, v0}, Li/c/b0/e/f/e/o3$b;-><init>(Li/c/b0/e/f/e/o3;Li/c/b0/e/f/e/o3$a;)V

    invoke-virtual {p1, v1}, Li/c/b0/b/d0;->d(Ljava/lang/Runnable;)Li/c/b0/c/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/o3$a;->a(Li/c/b0/c/c;)V

    return-void
.end method
