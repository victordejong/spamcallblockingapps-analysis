.class final Li/a/b/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final f:Li/a/b/p;

.field final g:Li/a/b/q$a;

.field final synthetic h:Li/a/b/q;


# direct methods
.method constructor <init>(Li/a/b/q;Li/a/b/p;Li/a/b/q$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/a/b/q$c;->h:Li/a/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/a/b/q$c;->f:Li/a/b/p;

    .line 3
    iput-object p3, p0, Li/a/b/q$c;->g:Li/a/b/q$a;

    .line 4
    invoke-static {p1}, Li/a/b/q;->a(Li/a/b/q;)Li/a/b/q$b;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Li/a/b/s/a/b;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 8

    .line 1
    iget-object v0, p0, Li/a/b/q$c;->g:Li/a/b/q$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/a/b/q$a;->i:Z

    .line 2
    iget-object v0, p0, Li/a/b/q$c;->h:Li/a/b/q;

    invoke-static {v0}, Li/a/b/q;->a(Li/a/b/q;)Li/a/b/q$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/a/b/s/a/b;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 5
    aget-object v4, v0, v3

    .line 6
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Li/a/b/q$c;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "close"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v3, 0x1

    .line 8
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 9
    aget-object v5, v0, v5

    .line 10
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kotlin.jdk7.AutoCloseableKt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "closeFinally"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v0

    if-ge v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x3

    .line 12
    :cond_0
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "invokeSuspend"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 13
    :cond_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 14
    aget-object v4, v0, v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 16
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "resumeWith"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Attempting to close a Scope created by Context.makeCurrent from inside a Kotlin coroutine. This is not allowed. Use Context.asContextElement provided by opentelemetry-extension-kotlin instead of makeCurrent."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iget-object v0, p0, Li/a/b/q$c;->g:Li/a/b/q$a;

    iget-wide v5, v0, Li/a/b/q$a;->g:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Li/a/b/q$c;->f:Li/a/b/p;

    invoke-interface {v0}, Li/a/b/p;->close()V

    return-void

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Li/a/b/q$c;->g:Li/a/b/q$a;

    iget-object v4, v4, Li/a/b/q$a;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Thread [%s] opened scope, but thread [%s] closed it"

    .line 23
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li/a/b/q$c;->g:Li/a/b/q$a;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/b/q$c;->g:Li/a/b/q$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
