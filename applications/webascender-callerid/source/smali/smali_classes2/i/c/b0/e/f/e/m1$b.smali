.class final Li/c/b0/e/f/e/m1$b;
.super Li/c/b0/f/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/f/b<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field final g:Li/c/b0/e/f/e/m1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/m1$c<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Li/c/b0/e/f/e/m1$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Li/c/b0/e/f/e/m1$c<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/f/b;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/m1$b;->g:Li/c/b0/e/f/e/m1$c;

    return-void
.end method

.method public static a(Ljava/lang/Object;ILi/c/b0/e/f/e/m1$a;Z)Li/c/b0/e/f/e/m1$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Li/c/b0/e/f/e/m1$a<",
            "*TK;TT;>;Z)",
            "Li/c/b0/e/f/e/m1$b<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/m1$c;

    invoke-direct {v0, p1, p2, p0, p3}, Li/c/b0/e/f/e/m1$c;-><init>(ILi/c/b0/e/f/e/m1$a;Ljava/lang/Object;Z)V

    .line 2
    new-instance p1, Li/c/b0/e/f/e/m1$b;

    invoke-direct {p1, p0, v0}, Li/c/b0/e/f/e/m1$b;-><init>(Ljava/lang/Object;Li/c/b0/e/f/e/m1$c;)V

    return-object p1
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$b;->g:Li/c/b0/e/f/e/m1$c;

    invoke-virtual {v0}, Li/c/b0/e/f/e/m1$c;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$b;->g:Li/c/b0/e/f/e/m1$c;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/m1$c;->e(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/b0/e/f/e/m1$b;->g:Li/c/b0/e/f/e/m1$c;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/m1$c;->f(Ljava/lang/Object;)V

    return-void
.end method

.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m1$b;->g:Li/c/b0/e/f/e/m1$c;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/m1$c;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
