.class final Li/c/z/e/f/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic g:Li/c/z/e/f/b;


# direct methods
.method constructor <init>(Li/c/z/e/f/b;Li/c/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/c/z/e/f/b$a;->g:Li/c/z/e/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/z/e/f/b$a;->f:Li/c/t;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/f/b$a;->f:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->a(Li/c/w/b;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/f/b$a;->f:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->onError(Ljava/lang/Throwable;)V

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
    :try_start_0
    iget-object v0, p0, Li/c/z/e/f/b$a;->g:Li/c/z/e/f/b;

    iget-object v0, v0, Li/c/z/e/f/b;->g:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Li/c/z/e/f/b$a;->f:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Li/c/z/e/f/b$a;->f:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
