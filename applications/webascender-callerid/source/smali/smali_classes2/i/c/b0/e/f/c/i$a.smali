.class final Li/c/b0/e/f/c/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/c/i;
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
        "Li/c/b0/b/g0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field g:Li/c/b0/c/c;


# direct methods
.method constructor <init>(Li/c/b0/b/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/i$a;->f:Li/c/b0/b/r;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/i$a;->g:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 2
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    iput-object v0, p0, Li/c/b0/e/f/c/i$a;->g:Li/c/b0/c/c;

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/i$a;->g:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    iput-object v0, p0, Li/c/b0/e/f/c/i$a;->g:Li/c/b0/c/c;

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/c/i$a;->f:Li/c/b0/b/r;

    invoke-interface {v0, p1}, Li/c/b0/b/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/i$a;->g:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/i$a;->g:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/c/i$a;->f:Li/c/b0/b/r;

    invoke-interface {p1, p0}, Li/c/b0/b/r;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    iput-object v0, p0, Li/c/b0/e/f/c/i$a;->g:Li/c/b0/c/c;

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/c/i$a;->f:Li/c/b0/b/r;

    invoke-interface {v0, p1}, Li/c/b0/b/r;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
