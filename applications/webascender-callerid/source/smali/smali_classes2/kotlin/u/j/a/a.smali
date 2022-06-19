.class public abstract Lkotlin/u/j/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/u/d;
.implements Lkotlin/u/j/a/d;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/u/d<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/u/j/a/d;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final completion:Lkotlin/u/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/u/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/u/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/u/j/a/a;->completion:Lkotlin/u/d;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lkotlin/u/d;)Lkotlin/u/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/u/d<",
            "*>;)",
            "Lkotlin/u/d<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Lkotlin/u/d;)Lkotlin/u/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/d<",
            "*>;)",
            "Lkotlin/u/d<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(Continuation) has not been overridden"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCallerFrame()Lkotlin/u/j/a/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/u/j/a/a;->completion:Lkotlin/u/d;

    instance-of v1, v0, Lkotlin/u/j/a/d;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/u/j/a/d;

    return-object v0
.end method

.method public final getCompletion()Lkotlin/u/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/u/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/u/j/a/a;->completion:Lkotlin/u/d;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/u/j/a/f;->d(Lkotlin/u/j/a/a;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected releaseIntercepted()V
    .locals 0

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    invoke-static {v0}, Lkotlin/u/j/a/g;->b(Lkotlin/u/d;)V

    .line 2
    iget-object v1, v0, Lkotlin/u/j/a/a;->completion:Lkotlin/u/d;

    invoke-static {v1}, Lkotlin/w/c/k;->d(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lkotlin/u/j/a/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {}, Lkotlin/u/i/b;->d()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return-void

    .line 5
    :cond_0
    sget-object v2, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-static {p1}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    sget-object v2, Lkotlin/m;->f:Lkotlin/m$a;

    invoke-static {p1}, Lkotlin/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_1
    invoke-virtual {v0}, Lkotlin/u/j/a/a;->releaseIntercepted()V

    .line 8
    instance-of v0, v1, Lkotlin/u/j/a/a;

    if-eqz v0, :cond_1

    .line 9
    move-object v0, v1

    check-cast v0, Lkotlin/u/j/a/a;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1, p1}, Lkotlin/u/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continuation at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/u/j/a/a;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
