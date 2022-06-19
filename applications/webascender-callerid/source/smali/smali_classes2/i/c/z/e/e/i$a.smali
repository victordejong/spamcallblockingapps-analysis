.class final Li/c/z/e/e/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/e/i;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/p<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final h:Li/c/z/a/e;

.field i:Z


# direct methods
.method constructor <init>(Li/c/q;Li/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TT;>;",
            "Li/c/p<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/e/i$a;->f:Li/c/q;

    .line 3
    iput-object p2, p0, Li/c/z/e/e/i$a;->g:Li/c/p;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/z/e/e/i$a;->i:Z

    .line 5
    new-instance p1, Li/c/z/a/e;

    invoke-direct {p1}, Li/c/z/a/e;-><init>()V

    iput-object p1, p0, Li/c/z/e/e/i$a;->h:Li/c/z/a/e;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/e/i$a;->h:Li/c/z/a/e;

    invoke-virtual {v0, p1}, Li/c/z/a/e;->b(Li/c/w/b;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/e/i$a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li/c/z/e/e/i$a;->i:Z

    .line 3
    iget-object v0, p0, Li/c/z/e/e/i$a;->g:Li/c/p;

    invoke-interface {v0, p0}, Li/c/p;->b(Li/c/q;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/z/e/e/i$a;->f:Li/c/q;

    invoke-interface {v0}, Li/c/q;->onComplete()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/e/i$a;->f:Li/c/q;

    invoke-interface {v0, p1}, Li/c/q;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Li/c/z/e/e/i$a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li/c/z/e/e/i$a;->i:Z

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/z/e/e/i$a;->f:Li/c/q;

    invoke-interface {v0, p1}, Li/c/q;->onNext(Ljava/lang/Object;)V

    return-void
.end method
