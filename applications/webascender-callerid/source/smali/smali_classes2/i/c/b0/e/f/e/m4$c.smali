.class final Li/c/b0/e/f/e/m4$c;
.super Li/c/b0/e/f/e/m4$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/m4$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/m4$a<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final v:Ljava/lang/Object;


# instance fields
.field final r:Li/c/b0/b/d0;

.field s:Li/c/b0/k/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final t:Li/c/b0/e/a/f;

.field final u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li/c/b0/e/f/e/m4$c;->v:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/m4$a;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;I)V

    .line 2
    iput-object p5, p0, Li/c/b0/e/f/e/m4$c;->r:Li/c/b0/b/d0;

    .line 3
    new-instance p1, Li/c/b0/e/a/f;

    invoke-direct {p1}, Li/c/b0/e/a/f;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/m4$c;->t:Li/c/b0/e/a/f;

    .line 4
    new-instance p1, Li/c/b0/e/f/e/m4$c$a;

    invoke-direct {p1, p0}, Li/c/b0/e/f/e/m4$c$a;-><init>(Li/c/b0/e/f/e/m4$c;)V

    iput-object p1, p0, Li/c/b0/e/f/e/m4$c;->u:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$c;->t:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->dispose()V

    return-void
.end method

.method b()V
    .locals 9

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    iget v0, p0, Li/c/b0/e/f/e/m4$a;->j:I

    iget-object v1, p0, Li/c/b0/e/f/e/m4$c;->u:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Li/c/b0/k/e;->c(ILjava/lang/Runnable;)Li/c/b0/k/e;

    move-result-object v0

    iput-object v0, p0, Li/c/b0/e/f/e/m4$c;->s:Li/c/b0/k/e;

    const-wide/16 v1, 0x1

    .line 4
    iput-wide v1, p0, Li/c/b0/e/f/e/m4$a;->k:J

    .line 5
    new-instance v1, Li/c/b0/e/f/e/l4;

    invoke-direct {v1, v0}, Li/c/b0/e/f/e/l4;-><init>(Li/c/b0/k/d;)V

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/e/m4$c;->t:Li/c/b0/e/a/f;

    iget-object v2, p0, Li/c/b0/e/f/e/m4$c;->r:Li/c/b0/b/d0;

    iget-wide v6, p0, Li/c/b0/e/f/e/m4$a;->h:J

    iget-object v8, p0, Li/c/b0/e/f/e/m4$a;->i:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v8}, Li/c/b0/b/d0;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    .line 8
    invoke-virtual {v1}, Li/c/b0/e/f/e/l4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Li/c/b0/e/f/e/m4$c;->s:Li/c/b0/k/e;

    invoke-virtual {v0}, Li/c/b0/k/e;->onComplete()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->g:Li/c/b0/e/c/j;

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/m4$a;->f:Li/c/b0/b/c0;

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/e/m4$c;->s:Li/c/b0/k/e;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Li/c/b0/e/f/e/m4$a;->p:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 7
    iput-object v6, p0, Li/c/b0/e/f/e/m4$c;->s:Li/c/b0/k/e;

    move-object v2, v6

    goto/16 :goto_3

    .line 8
    :cond_2
    iget-boolean v5, p0, Li/c/b0/e/f/e/m4$a;->l:Z

    .line 9
    invoke-interface {v0}, Li/c/b0/e/c/j;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    .line 10
    iget-object v5, p0, Li/c/b0/e/f/e/m4$a;->m:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2, v5}, Li/c/b0/k/e;->onError(Ljava/lang/Throwable;)V

    .line 12
    :cond_4
    invoke-interface {v1, v5}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v2}, Li/c/b0/k/e;->onComplete()V

    .line 14
    :cond_6
    invoke-interface {v1}, Li/c/b0/b/c0;->onComplete()V

    .line 15
    :goto_2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m4$c;->a()V

    .line 16
    iput-boolean v3, p0, Li/c/b0/e/f/e/m4$a;->p:Z

    goto :goto_0

    :cond_7
    if-nez v8, :cond_b

    .line 17
    sget-object v5, Li/c/b0/e/f/e/m4$c;->v:Ljava/lang/Object;

    if-ne v7, v5, :cond_a

    if-eqz v2, :cond_8

    .line 18
    invoke-virtual {v2}, Li/c/b0/k/e;->onComplete()V

    .line 19
    iput-object v6, p0, Li/c/b0/e/f/e/m4$c;->s:Li/c/b0/k/e;

    move-object v2, v6

    .line 20
    :cond_8
    iget-object v5, p0, Li/c/b0/e/f/e/m4$a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 21
    iget-object v5, p0, Li/c/b0/e/f/e/m4$c;->t:Li/c/b0/e/a/f;

    invoke-virtual {v5}, Li/c/b0/e/a/f;->dispose()V

    goto :goto_0

    .line 22
    :cond_9
    iget-wide v5, p0, Li/c/b0/e/f/e/m4$a;->k:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Li/c/b0/e/f/e/m4$a;->k:J

    .line 23
    iget-object v2, p0, Li/c/b0/e/f/e/m4$a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 24
    iget v2, p0, Li/c/b0/e/f/e/m4$a;->j:I

    iget-object v5, p0, Li/c/b0/e/f/e/m4$c;->u:Ljava/lang/Runnable;

    invoke-static {v2, v5}, Li/c/b0/k/e;->c(ILjava/lang/Runnable;)Li/c/b0/k/e;

    move-result-object v2

    .line 25
    iput-object v2, p0, Li/c/b0/e/f/e/m4$c;->s:Li/c/b0/k/e;

    .line 26
    new-instance v5, Li/c/b0/e/f/e/l4;

    invoke-direct {v5, v2}, Li/c/b0/e/f/e/l4;-><init>(Li/c/b0/k/d;)V

    .line 27
    invoke-interface {v1, v5}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v5}, Li/c/b0/e/f/e/l4;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    invoke-virtual {v2}, Li/c/b0/k/e;->onComplete()V

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {v2, v7}, Li/c/b0/k/e;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    :goto_3
    neg-int v4, v4

    .line 31
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->g:Li/c/b0/e/c/j;

    sget-object v1, Li/c/b0/e/f/e/m4$c;->v:Ljava/lang/Object;

    invoke-interface {v0, v1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m4$c;->c()V

    return-void
.end method
