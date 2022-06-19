.class final Li/c/b0/e/f/e/r2$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Ljava/lang/Runnable;",
        "Li/c/b0/d/g<",
        "Li/c/b0/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/r2<",
            "*>;"
        }
    .end annotation
.end field

.field g:Li/c/b0/c/c;

.field h:J

.field i:Z

.field j:Z


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/r2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/r2<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/r2$a;->f:Li/c/b0/e/f/e/r2;

    return-void
.end method


# virtual methods
.method public a(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/r2$a;->f:Li/c/b0/e/f/e/r2;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-boolean v0, p0, Li/c/b0/e/f/e/r2$a;->j:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/r2$a;->f:Li/c/b0/e/f/e/r2;

    iget-object v0, v0, Li/c/b0/e/f/e/r2;->f:Li/c/b0/f/a;

    invoke-virtual {v0}, Li/c/b0/f/a;->c()V

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Li/c/b0/c/c;

    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/r2$a;->a(Li/c/b0/c/c;)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/r2$a;->f:Li/c/b0/e/f/e/r2;

    invoke-virtual {v0, p0}, Li/c/b0/e/f/e/r2;->c(Li/c/b0/e/f/e/r2$a;)V

    return-void
.end method
