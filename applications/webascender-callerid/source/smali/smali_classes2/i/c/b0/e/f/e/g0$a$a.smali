.class final Li/c/b0/e/f/e/g0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/g0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Li/c/b0/e/f/e/g0$a;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/g0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/g0$a$a;->f:Li/c/b0/e/f/e/g0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g0$a$a;->f:Li/c/b0/e/f/e/g0$a;

    iget-object v0, v0, Li/c/b0/e/f/e/g0$a;->g:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g0$a$a;->f:Li/c/b0/e/f/e/g0$a;

    iget-object v0, v0, Li/c/b0/e/f/e/g0$a;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/b0/e/f/e/g0$a$a;->f:Li/c/b0/e/f/e/g0$a;

    iget-object v0, v0, Li/c/b0/e/f/e/g0$a;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g0$a$a;->f:Li/c/b0/e/f/e/g0$a;

    iget-object v0, v0, Li/c/b0/e/f/e/g0$a;->f:Li/c/b0/e/a/f;

    invoke-virtual {v0, p1}, Li/c/b0/e/a/f;->b(Li/c/b0/c/c;)Z

    return-void
.end method
