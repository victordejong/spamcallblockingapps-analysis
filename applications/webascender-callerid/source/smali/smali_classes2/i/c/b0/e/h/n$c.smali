.class final Li/c/b0/e/h/n$c;
.super Li/c/b0/b/d0$c;
.source "SourceFile"

# interfaces
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/h/n$c$a;
    }
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Li/c/b0/e/h/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile i:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/c/b0/b/d0$c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Li/c/b0/e/h/n$c;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Li/c/b0/e/h/n$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Li/c/b0/e/h/n$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Li/c/b0/c/c;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Li/c/b0/b/d0$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Li/c/b0/e/h/n$c;->e(Ljava/lang/Runnable;J)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 2

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Li/c/b0/b/d0$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    .line 2
    new-instance p2, Li/c/b0/e/h/n$a;

    invoke-direct {p2, p1, p0, v0, v1}, Li/c/b0/e/h/n$a;-><init>(Ljava/lang/Runnable;Li/c/b0/e/h/n$c;J)V

    invoke-virtual {p0, p2, v0, v1}, Li/c/b0/e/h/n$c;->e(Ljava/lang/Runnable;J)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/h/n$c;->i:Z

    return-void
.end method

.method e(Ljava/lang/Runnable;J)Li/c/b0/c/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/n$c;->i:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Li/c/b0/e/h/n$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Li/c/b0/e/h/n$c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Li/c/b0/e/h/n$b;-><init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/h/n$c;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Li/c/b0/e/h/n$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-boolean p2, p0, Li/c/b0/e/h/n$c;->i:Z

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Li/c/b0/e/h/n$c;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 8
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    .line 9
    :cond_2
    iget-object p2, p0, Li/c/b0/e/h/n$c;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li/c/b0/e/h/n$b;

    if-nez p2, :cond_3

    .line 10
    iget-object p2, p0, Li/c/b0/e/h/n$c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 11
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    .line 12
    :cond_3
    iget-boolean p3, p2, Li/c/b0/e/h/n$b;->i:Z

    if-nez p3, :cond_1

    .line 13
    iget-object p2, p2, Li/c/b0/e/h/n$b;->f:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 14
    :cond_4
    new-instance p1, Li/c/b0/e/h/n$c$a;

    invoke-direct {p1, p0, v0}, Li/c/b0/e/h/n$c$a;-><init>(Li/c/b0/e/h/n$c;Li/c/b0/e/h/n$b;)V

    invoke-static {p1}, Li/c/b0/c/b;->c(Ljava/lang/Runnable;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/n$c;->i:Z

    return v0
.end method
