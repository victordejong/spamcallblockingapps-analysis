.class final Li/c/b0/e/f/a/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final f:Li/c/b0/b/g;

.field final synthetic g:Li/c/b0/e/f/a/p;


# direct methods
.method constructor <init>(Li/c/b0/e/f/a/p;Li/c/b0/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/a/p$a;->g:Li/c/b0/e/f/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/a/p$a;->f:Li/c/b0/b/g;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/p$a;->f:Li/c/b0/b/g;

    invoke-interface {v0}, Li/c/b0/b/g;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/a/p$a;->g:Li/c/b0/e/f/a/p;

    iget-object v0, v0, Li/c/b0/e/f/a/p;->g:Li/c/b0/d/p;

    invoke-interface {v0, p1}, Li/c/b0/d/p;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/a/p$a;->f:Li/c/b0/b/g;

    invoke-interface {p1}, Li/c/b0/b/g;->onComplete()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/a/p$a;->f:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Li/c/b0/e/f/a/p$a;->f:Li/c/b0/b/g;

    new-instance v2, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/p$a;->f:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    return-void
.end method
