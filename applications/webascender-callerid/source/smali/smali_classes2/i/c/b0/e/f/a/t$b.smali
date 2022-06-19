.class final Li/c/b0/e/f/a/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final f:Li/c/b0/c/a;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Li/c/b0/b/g;


# direct methods
.method constructor <init>(Li/c/b0/c/a;Ljava/util/concurrent/atomic/AtomicBoolean;Li/c/b0/b/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/t$b;->f:Li/c/b0/c/a;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/a/t$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-object p3, p0, Li/c/b0/e/f/a/t$b;->h:Li/c/b0/b/g;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/t$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/t$b;->f:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/a/t$b;->h:Li/c/b0/b/g;

    invoke-interface {v0}, Li/c/b0/b/g;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/t$b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/t$b;->f:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/a/t$b;->h:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/t$b;->f:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
