.class final Li/c/b0/e/f/a/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/a/t$a$a;
    }
.end annotation


# instance fields
.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final g:Li/c/b0/c/a;

.field final h:Li/c/b0/b/g;

.field final synthetic i:Li/c/b0/e/f/a/t;


# direct methods
.method constructor <init>(Li/c/b0/e/f/a/t;Ljava/util/concurrent/atomic/AtomicBoolean;Li/c/b0/c/a;Li/c/b0/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/a/t$a;->i:Li/c/b0/e/f/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/a/t$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/a/t$a;->g:Li/c/b0/c/a;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/a/t$a;->h:Li/c/b0/b/g;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/t$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/t$a;->g:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/a/t$a;->i:Li/c/b0/e/f/a/t;

    iget-object v0, v0, Li/c/b0/e/f/a/t;->j:Li/c/b0/b/i;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/a/t$a;->h:Li/c/b0/b/g;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-object v2, p0, Li/c/b0/e/f/a/t$a;->i:Li/c/b0/e/f/a/t;

    iget-wide v3, v2, Li/c/b0/e/f/a/t;->g:J

    iget-object v2, v2, Li/c/b0/e/f/a/t;->h:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v2}, Li/c/b0/e/k/j;->f(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Li/c/b0/e/f/a/t$a$a;

    invoke-direct {v1, p0}, Li/c/b0/e/f/a/t$a$a;-><init>(Li/c/b0/e/f/a/t$a;)V

    invoke-interface {v0, v1}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    :cond_1
    :goto_0
    return-void
.end method
