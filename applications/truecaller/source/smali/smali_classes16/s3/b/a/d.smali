.class public Ls3/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;

.field public final synthetic b:Ls3/b/a/a$b;


# direct methods
.method public constructor <init>(Ls3/b/a/a$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls3/b/a/d;->b:Ls3/b/a/a$b;

    iput-object p2, p0, Ls3/b/a/d;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls3/b/a/d;->a:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ls3/b/a/d;->b:Ls3/b/a/a$b;

    iget-object v0, v0, Ls3/b/a/a$b;->b:Ls3/b/a/a$c;

    invoke-interface {v0}, Ls3/b/a/a$c;->c()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ls3/b/a/d;->b:Ls3/b/a/a$b;

    iget-object v0, v0, Ls3/b/a/a$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Ls3/b/a/d;->b:Ls3/b/a/a$b;

    iget-object v0, v0, Ls3/b/a/a$b;->b:Ls3/b/a/a$c;

    invoke-interface {v0}, Ls3/b/a/a$c;->a()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Ls3/b/a/d;->b:Ls3/b/a/a$b;

    iget-object v0, v0, Ls3/b/a/a$b;->b:Ls3/b/a/a$c;

    iget-object v1, p0, Ls3/b/a/d;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Ls3/b/a/a$c;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
