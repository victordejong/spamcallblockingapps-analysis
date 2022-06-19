.class final Li/c/z/g/c$b;
.super Li/c/r$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final f:Li/c/w/a;

.field private final g:Li/c/z/g/c$a;

.field private final h:Li/c/z/g/c$c;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Li/c/z/g/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Li/c/r$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Li/c/z/g/c$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Li/c/z/g/c$b;->g:Li/c/z/g/c$a;

    .line 4
    new-instance v0, Li/c/w/a;

    invoke-direct {v0}, Li/c/w/a;-><init>()V

    iput-object v0, p0, Li/c/z/g/c$b;->f:Li/c/w/a;

    .line 5
    invoke-virtual {p1}, Li/c/z/g/c$a;->b()Li/c/z/g/c$c;

    move-result-object p1

    iput-object p1, p0, Li/c/z/g/c$b;->h:Li/c/z/g/c$c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/w/b;
    .locals 6

    .line 1
    iget-object v0, p0, Li/c/z/g/c$b;->f:Li/c/w/a;

    invoke-virtual {v0}, Li/c/w/a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/z/g/c$b;->h:Li/c/z/g/c$c;

    iget-object v5, p0, Li/c/z/g/c$b;->f:Li/c/w/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Li/c/z/g/e;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Li/c/z/a/a;)Li/c/z/g/h;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/z/g/c$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/z/g/c$b;->f:Li/c/w/a;

    invoke-virtual {v0}, Li/c/w/a;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/z/g/c$b;->g:Li/c/z/g/c$a;

    iget-object v1, p0, Li/c/z/g/c$b;->h:Li/c/z/g/c$c;

    invoke-virtual {v0, v1}, Li/c/z/g/c$a;->d(Li/c/z/g/c$c;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/g/c$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
