.class final Li/c/z/e/f/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/f/a;
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
.field private final f:Li/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic g:Li/c/z/e/f/a;


# direct methods
.method constructor <init>(Li/c/z/e/f/a;Li/c/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/c/z/e/f/a$a;->g:Li/c/z/e/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/z/e/f/a$a;->f:Li/c/t;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/f/a$a;->f:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->a(Li/c/w/b;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/f/a$a;->g:Li/c/z/e/f/a;

    iget-object v0, v0, Li/c/z/e/f/a;->g:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 3
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 4
    :goto_0
    iget-object v0, p0, Li/c/z/e/f/a$a;->f:Li/c/t;

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
    iget-object v0, p0, Li/c/z/e/f/a$a;->f:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
