.class final Li/c/z/e/c/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/c;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/j;
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
        "Li/c/c;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/l<",
            "-TT;>;"
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
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/j$a;->f:Li/c/l;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/j$a;->g:Li/c/w/b;

    invoke-static {v0, p1}, Li/c/z/a/b;->validate(Li/c/w/b;Li/c/w/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/z/e/c/j$a;->g:Li/c/w/b;

    .line 3
    iget-object p1, p0, Li/c/z/e/c/j$a;->f:Li/c/l;

    invoke-interface {p1, p0}, Li/c/l;->a(Li/c/w/b;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/j$a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    .line 2
    sget-object v0, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    iput-object v0, p0, Li/c/z/e/c/j$a;->g:Li/c/w/b;

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/j$a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    sget-object v0, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    iput-object v0, p0, Li/c/z/e/c/j$a;->g:Li/c/w/b;

    .line 2
    iget-object v0, p0, Li/c/z/e/c/j$a;->f:Li/c/l;

    invoke-interface {v0}, Li/c/l;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    iput-object v0, p0, Li/c/z/e/c/j$a;->g:Li/c/w/b;

    .line 2
    iget-object v0, p0, Li/c/z/e/c/j$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
