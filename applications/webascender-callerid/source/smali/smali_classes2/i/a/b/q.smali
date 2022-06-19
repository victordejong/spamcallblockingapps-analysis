.class final Li/a/b/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/i;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/b/q$b;,
        Li/a/b/q$a;,
        Li/a/b/q$c;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/logging/Logger;


# instance fields
.field private final f:Li/a/b/i;

.field private final g:Li/a/b/q$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li/a/b/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li/a/b/q;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Li/a/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/b/q;->f:Li/a/b/i;

    .line 3
    invoke-static {}, Li/a/b/q$b;->m()Li/a/b/q$b;

    move-result-object p1

    iput-object p1, p0, Li/a/b/q;->g:Li/a/b/q$b;

    return-void
.end method

.method static synthetic a(Li/a/b/q;)Li/a/b/q$b;
    .locals 0

    .line 1
    iget-object p0, p0, Li/a/b/q;->g:Li/a/b/q$b;

    return-object p0
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/q;->h:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static c(Li/a/b/q$a;)Ljava/lang/AssertionError;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li/a/b/q$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] opened a scope of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li/a/b/q$a;->h:Li/a/b/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " here:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/AssertionError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object v0
.end method

.method static e(Li/a/b/i;)Li/a/b/q;
    .locals 1

    .line 1
    new-instance v0, Li/a/b/q;

    invoke-direct {v0, p0}, Li/a/b/q;-><init>(Li/a/b/i;)V

    return-object v0
.end method


# virtual methods
.method public attach(Li/a/b/e;)Li/a/b/p;
    .locals 6

    .line 1
    iget-object v0, p0, Li/a/b/q;->f:Li/a/b/i;

    invoke-interface {v0, p1}, Li/a/b/i;->attach(Li/a/b/e;)Li/a/b/p;

    move-result-object v0

    .line 2
    new-instance v1, Li/a/b/q$a;

    invoke-direct {v1, p1}, Li/a/b/q$a;-><init>(Li/a/b/e;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 5
    aget-object v3, p1, v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Li/a/b/e;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "makeCurrent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x2

    .line 8
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 9
    aget-object v3, p1, v3

    .line 10
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resumeWith"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Attempting to call Context.makeCurrent from inside a Kotlin coroutine. This is not allowed. Use Context.asContextElement provided by opentelemetry-extension-kotlin instead of makeCurrent."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 14
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 15
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.opentelemetry.api."

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "io.opentelemetry.sdk.testing.context.SettableContextStorageProvider"

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "io.opentelemetry.context."

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_4
    array-length v3, p1

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 21
    new-instance p1, Li/a/b/q$c;

    invoke-direct {p1, p0, v0, v1}, Li/a/b/q$c;-><init>(Li/a/b/q;Li/a/b/p;Li/a/b/q$a;)V

    return-object p1
.end method

.method public close()V
    .locals 6

    .line 1
    iget-object v0, p0, Li/a/b/q;->g:Li/a/b/q$b;

    invoke-virtual {v0}, Li/a/b/s/a/b;->c()V

    .line 2
    iget-object v0, p0, Li/a/b/q;->g:Li/a/b/q$b;

    invoke-virtual {v0}, Li/a/b/q$b;->n()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 5
    sget-object v1, Li/a/b/q;->h:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Multiple scopes leaked - first will be thrown as an error."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/a/b/q$a;

    .line 7
    sget-object v3, Li/a/b/q;->h:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v2}, Li/a/b/q;->c(Li/a/b/q$a;)Ljava/lang/AssertionError;

    move-result-object v2

    const-string v5, "Scope leaked"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/b/q$a;

    invoke-static {v0}, Li/a/b/q;->c(Li/a/b/q$a;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method public current()Li/a/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/b/q;->f:Li/a/b/i;

    invoke-interface {v0}, Li/a/b/i;->current()Li/a/b/e;

    move-result-object v0

    return-object v0
.end method
