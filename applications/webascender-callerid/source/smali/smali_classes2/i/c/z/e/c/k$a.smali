.class final Li/c/z/e/c/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/l;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/k;
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
        "Li/c/l<",
        "TT;>;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/l<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field g:Li/c/w/b;


# direct methods
.method constructor <init>(Li/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/k$a;->f:Li/c/l;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/k$a;->g:Li/c/w/b;

    invoke-static {v0, p1}, Li/c/z/a/b;->validate(Li/c/w/b;Li/c/w/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/c/k$a;->g:Li/c/w/b;

    .line 3
    iget-object p1, p0, Li/c/z/e/c/k$a;->f:Li/c/l;

    invoke-interface {p1, p0}, Li/c/l;->a(Li/c/w/b;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/k$a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/k$a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/c/k$a;->f:Li/c/l;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Li/c/l;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/k$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onError(Ljava/lang/Throwable;)V

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
    iget-object p1, p0, Li/c/z/e/c/k$a;->f:Li/c/l;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Li/c/l;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
